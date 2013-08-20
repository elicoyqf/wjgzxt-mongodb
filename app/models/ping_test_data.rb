class PingTestData
  include Mongoid::Document
  include Mongoid::Timestamps
  field :test_time, type: String
  field :source_node_name, type: String
  field :source_ip_address, type: String
  field :source_group, type: String
  field :dest_node_name, type: String
  field :dest_url, type: String
  field :dest_group, type: String
  field :resolution_time, type: String
  field :lost_packets, type: String
  field :send_packets, type: String
  field :lost_packets_no, type: String
  field :delay, type: String
  field :max_delay, type: String
  field :min_delay, type: String
  field :std_delay, type: String
  field :jitter, type: String
  field :max_jitter, type: String
  field :min_jitter, type: String
  field :std_jitter, type: String
  field :dest_ip_address, type: String
  field :dest_nationality, type: String
  field :dest_province, type: String
  field :dest_locale, type: String

end
