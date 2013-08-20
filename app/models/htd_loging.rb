class HtdLoging
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :status, type: Integer
end
