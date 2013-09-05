class HttpTestScore
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
  field :time_to_index, type: Integer
  field :page_download_time, type: Integer
  field :page_loading_time, type: Integer
  field :total_time, type: Integer
  field :throughput_time, type: Integer
  field :overall_quality, type: Integer
  field :resolution_sr, type: Integer
  field :connection_sr, type: Integer
  field :index_page_loading_sr, type: Integer
  field :page_loading_r, type: Integer
  field :loading_sr, type: Integer
  field :dest_ip_address, type: String
  field :dest_nationality, type: String
  field :dest_province, type: String
  field :dest_locale, type: String
  field :download_size, type: Integer
  field :contents_size, type: Integer
  field :return_code, type: String
  field :add_ons, type: Integer
  field :element_number, type: Integer
  field :positive_items, type: Integer
  field :negative_items, type: Integer
  field :equal_items, type: Integer
  field :positive_items_scores, type: Integer
  field :negative_items_scores, type: Integer
  field :equal_items_scores, type: Integer
  field :total_scores, type: Integer

  index({ test_time: 1, dest_url: 1, source_node_name: 1, total_scores: 1 }, { name: 'hts_ix' })

=begin
  add_index "http_test_scores", ["dest_url"], :name => "index_http_test_scores_on_dest_url"
  add_index "http_test_scores", ["test_time", "source_node_name", "dest_url", "equal_items_scores", "total_scores"], :name => "hts_tsdet"
  add_index "http_test_scores", ["test_time", "source_node_name", "total_scores", "dest_url"], :name => "hts_tstd"
  add_index "http_test_scores", ["test_time", "source_node_name", "total_scores"], :name => "hts_tst"
  add_index "http_test_scores", ["test_time", "source_node_name"], :name => "index_http_test_scores_on_test_time_and_source_node_name"
=end

end
