class HttpTestStatisUrl
  include Mongoid::Document
  include Mongoid::Timestamps


  field :day, type: Time
  field :export_name, type: String
  field :dest_url, type: String
  field :type, type: Integer

  #validates_uniqueness_of :day, scope: :name, :export_name, :dest_url, :type
  index({ day: 1, export_name: 1, dest_url: 1, type: 1 }, { name: 'htstatisurl_ix' })
end
