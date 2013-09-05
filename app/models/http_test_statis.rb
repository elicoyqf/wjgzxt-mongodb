class HttpTestStatis
  include Mongoid::Document
  include Mongoid::Timestamps
  field :export_name, type: String
  field :end_time, type: DateTime
  field :negative_statis, type: Float
  field :start_time, type: DateTime
  field :total_statis, type: Float
  field :negative_num, type: Integer
  field :all_match_num, type: Integer
  index({ start_time: 1, export_name: 1, end_time: 1, negative_statis: 1, total_statis: 1 }, { name: 'htstatis_ix' })

=begin
  add_index "http_test_statis", ["export_name", "start_time", "end_time", "negative_statis", "total_statis"], :name => "hts_esent"
  add_index "http_test_statis", ["start_time", "export_name"], :name => "index_http_test_statis_on_start_time_and_export_name"
  add_index "http_test_statis", ["start_time"], :name => "index_http_test_statis_on_start_time"
=end
end
