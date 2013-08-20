class EmailDegradationLog
  include Mongoid::Document
  include Mongoid::Timestamps
  field :export_name, type: String
  field :time_begin, type: DateTime
  field :time_end, type: DateTime
  field :last_time_r, type: Integer
  field :nega_r, type: Integer

end
