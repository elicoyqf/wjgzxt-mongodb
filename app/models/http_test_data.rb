class HttpTestData
  include Mongoid::Document
  include Mongoid::Timestamps
  field :test_time, type: DateTime
  field :source_node_name, type: String
  field :source_ip_address, type: String
  field :source_group, type: String
  field :dest_node_name, type: String
  field :dest_url, type: String
  field :dest_group, type: String
  field :resolution_time, type: String
  field :connection_time, type: String
  field :time_to_first_byte, type: String
  field :time_to_index, type: String
  field :page_download_time, type: String
  field :page_loading_time, type: String
  field :total_time, type: String
  field :throughput_time, type: String
  field :overall_quality, type: String
  field :resolution_sr, type: String
  field :connection_sr, type: String
  field :index_page_loading_sr, type: String
  field :page_loading_r, type: String
  field :loading_sr, type: String
  field :dest_ip_address, type: String
  field :dest_nationality, type: String
  field :dest_province, type: String
  field :dest_locale, type: String
  field :download_size, type: String
  field :contents_size, type: String
  field :return_code, type: String
  field :add_ons, type: String
  field :element_number, type: String

  index({test_time: 1,dest_node_name: 1, dest_url: 1,source_node_name: 1 },{name: 'htd_ix'})

=begin
  ActiveRecord::Migration.add_index :http_test_data, [:test_time, :dest_url]
  ActiveRecord::Migration.add_index :http_test_data, [:test_time, :source_node_name]
  ActiveRecord::Migration.add_index :http_test_data, [:test_time, :dest_node_name, :dest_url], name: 'htd_tdd'
  ActiveRecord::Migration.add_index :http_test_data, [:test_time, :source_node_name, :dest_url], name: 'htd_tsd'
=end

end
