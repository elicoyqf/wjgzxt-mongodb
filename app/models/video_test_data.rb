class VideoTestData
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
  field :connection_time, type: String
  field :time_to_first_byte, type: String
  field :time_to_first_frame, type: String
  field :total_buffer_time, type: String
  field :time_to_first_buffer, type: String
  field :avg_butffer_rate, type: String
  field :buffering_count, type: String
  field :playback_duration, type: String
  field :download_time, type: String
  field :throughput_time, type: String
  field :playback_rate, type: String
  field :resolution_sr, type: String
  field :rebuffering_rate, type: String
  field :connection_sr, type: String
  field :total_sr, type: String
  field :dest_ip_address, type: String
  field :dest_nationality, type: String
  field :dest_province, type: String
  field :dest_locale, type: String
  field :download_size, type: String
  field :contents_size, type: String
  field :return_code, type: String
  field :add_ons, type: String
end
