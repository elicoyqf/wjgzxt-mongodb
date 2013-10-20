class WelcomeController < ApplicationController
  def index
    #ef          = ExportName.where(user_id: current_user.id)
    ef          = ExportName.where(user_id: current_user.id, status: 0)

    #[dx,lt,oe,total_pos,total_neg,total_eql,dx_array,lt_array]
    @time_begin = Time.now.at_beginning_of_day + 8.hour
    @time_end   = Time.now + 8.hour

    @dx, @lt, @oe, @total_pos, @total_neg, @total_eql, @dx_array, @lt_array = cal_export_ranking @time_begin, @time_end, ef
    render layout: 'application'
  end
end
