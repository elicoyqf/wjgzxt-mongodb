class WebHitRateStatis
  include Mongoid::Document
  include Mongoid::Timestamps
  field :dx_hit_rate, type: Float
  field :lt_hit_rate, type: Float
  field :time_begin, type: DateTime
  field :url, type: String
end
