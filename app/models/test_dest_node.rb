class TestDestNode
  include Mongoid::Document
  include Mongoid::Timestamps
  field :dest_node_name, type: String
  field :dest_url, type: String
  field :locale, type: String
  validates :dest_node_name, :uniqueness => true
  validates :dest_url, :uniqueness => true
end
