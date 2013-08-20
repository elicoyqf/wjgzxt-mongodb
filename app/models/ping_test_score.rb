class PingTestScore
  include Mongoid::Document
  include Mongoid::Timestamps
  field :test_time, type: DateTime
  field :source_node_name, type: String
  field :source_ip_address, type: String
  field :source_group, type: String
  field :dest_node_name, type: String
  field :dest_url, type: String
  field :dest_group, type: String
  field :resolution_time, type: Integer
  field :lost_packets, type: Integer
  field :send_packets, type: Integer
  field :lost_packets_no, type: Integer
  field :delay, type: Integer
  field :max_delay, type: Integer
  field :min_delay, type: Integer
  field :std_delay, type: Integer
  field :jitter, type: Integer
  field :max_jitter, type: Integer
  field :min_jitter, type: Integer
  field :std_jitter, type: Integer
  field :dest_ip_address, type: String
  field :dest_nationality, type: String
  field :dest_province, type: String
  field :dest_locale, type: String
  field :positive_items, type: Integer
  field :negative_items, type: Integer
  field :equal_items, type: Integer
  field :positive_items_scores, type: Integer
  field :negative_items_scores, type: Integer
  field :equal_items_scores, type: Integer
  field :total_scores, type: Integer
end
