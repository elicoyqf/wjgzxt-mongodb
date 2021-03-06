class HttpTestStatisBtd
  include Mongoid::Document
  include Mongoid::Timestamps

  field :export_name, type: String
  field :day, type: DateTime
  field :negative_statis, type: Float
  field :total_statis, type: Float

  index({ day: 1, export_name: 1, negative_statis: 1, total_statis: 1 }, { name: 'htstatisbty_ix' })
end
