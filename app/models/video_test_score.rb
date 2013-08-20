class VideoTestScore
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
  field :connection_time, type: Integer
  field :time_to_first_byte, type: Integer
  field :time_to_first_frame, type: Integer
  field :total_buffer_time, type: Integer
  field :time_to_first_buffer, type: Integer
  field :avg_butffer_rate, type: Integer
  field :buffering_count, type: Integer
  field :playback_duration, type: Integer
  field :download_time, type: Integer
  field :throuthput_time, type: Integer
  field :playback_rate, type: Integer
  field :resolution_sr, type: Integer
  field :rebuffering_rate, type: Integer
  field :connection_sr, type: Integer
  field :total_sr, type: Integer
  field :dest_ip_address, type: String
  field :dest_nationality, type: String
  field :dest_province, type: String
  field :dest_locale, type: String
  field :download_size, type: Integer
  field :contents_size, type: Integer
  field :return_code, type: Integer
  field :add_ons, type: Integer
  field :positive_items, type: Integer
  field :negative_items, type: Integer
  field :equal_items, type: Integer
  field :positive_items_scores, type: Integer
  field :negative_items_scores, type: Integer
  field :equal_items_scores, type: Integer
  field :total_scores, type: Integer
end
