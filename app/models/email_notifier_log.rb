class EmailNotifierLog
  include Mongoid::Document
  include Mongoid::Timestamps
  field :export_name, type: String
  field :time_begin, type: DateTime
  field :time_end, type: DateTime
  field :nega_num, type: Integer
  field :total_match_num, type: Integer
end
