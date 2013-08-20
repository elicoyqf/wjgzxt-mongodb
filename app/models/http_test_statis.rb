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
  index({ export_name: 1, start_time: 1, end_time: 1, negative_statis: 1, total_statis: 1 }, { name: 'htstatis_ix' })
end
