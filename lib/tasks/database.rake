#encoding: utf-8

namespace :database do

  desc '定时执行将csv原始文件导入至数据库中'
  task :csv2db => :environment do
    #每次读取前2小时的数据，因为文件上传时间比较慢的关系。
    tb                   = Time.now
    time                 = Time.now.at_beginning_of_hour - 2.hour
    postfix              = time.strftime('%Y%m%d%H%M') + '.csv'
    #http_filename        = 'E:/HTTP_201308202000.csv'
    http_filename        = '/home/wgdata/HTTP_' + postfix
    trace_route_filename = '/home/wgdata/TEST'
    video_filename       = '/home/wgdata/TEST'
    ping_filename        = '/home/wgdata/TEST'
    #暂时先不处理其它几个文件了
    #trace_route_filename = '/home/wgdata/TRACE ROUTE_' + postfix
    #video_filename       = '/home/wgdata/Video_' + postfix
    #ping_filename        = '/home/wgdata/PING_' + postfix
    filename             = []
    #filename << file
    filename << http_filename
    filename << trace_route_filename
    filename << video_filename
    filename << ping_filename

    update_db = CsvDb::CsvProcedure.new
    update_db.csv_to_db filename
    te = Time.now
    puts 'csv2db total time is =====> '+ (te-tb).to_s + ' second.'
  end

  desc '将数据库表hts进行更名，重新新建表'
  task :newtable => :environment do
    tb = Time.now
    t  = CsvDb::CsvProcedure.new
    t.change_htd_table
    te = Time.now
    puts 'newtable total time is =====> ' + (te-tb).to_s + ' second.'
    #t.create_htd_new_table('http20130518')
  end

  desc '定时分析数据'
  task :analyse_data => :environment do
    #取前一个小时的数据进行自动分析
    tb         = Time.now
    time_begin = Time.now.at_beginning_of_hour - 2.hour
    time_end   = Time.now.at_beginning_of_hour - 1.hour

    #通过数据进行分析
    a_data     = CsvDb::CsvProcedure.new
    a_data.analyse_data_to_db(time_begin, time_end)
    a_data.statis_data_to_db(time_begin, time_end)
    #a_data.statis_web_hit_rate(time_begin,time_end)
    te = Time.now
    puts 'analyse_data total time is ====> ' + (te-tb).to_s + ' second.'
  end

  desc '定时清除60天以前的数据'
  task :dbclear => :environment do

  end

  desc '测试是否生效'
  task :test => :environment do
    te = CsvDb::CsvProcedure.new
    te.testrake
  end

  desc '重新分析一些需要调整的数据'
  task :analyse_old_data => :environment do

    #需要重新处理的表默认状态为1，更新完成后改为2
    p_tb_name = HtdLoging.where('status = 1')

    p_tb_name.each do |t_name|
      tb       = Time.now
      data_set = Dynamic.klass t_name.name
      p_date   = t_name.name[15, 21]
      t_str    = p_date[0, 4] + '-' + p_date[4, 2] + '-' + p_date[6, 2]
      p_tb     = Time.parse(t_str)
      p_te     = p_tb + 22.hour
      #todo:由于分表造成了每天最后两个小时的数据到了另一张表里面，所以现在只算每天22小时的数据，调整完成后，再开放一整天的数据
      #p_te     = p_tb + 1.day
      #通过数据进行分析
      a_data   = CsvDb::CsvProcedure.new

      while p_tb < p_te
        a_data.analyse_data_to_db(p_tb, p_tb + 1.hour, data_set)
        a_data.statis_data_to_db(p_tb, p_tb + 1.hour)
        puts 'process time is :'+'='*50
        puts p_tb
        puts p_te

        p_tb += 1.hour
      end

      te = Time.now
      t_name.update_attribute(:status, 2)
      puts "Process ** #{t_name.name} ** total time is ====> " + (te-tb).to_s + ' second.'
    end


  end
end