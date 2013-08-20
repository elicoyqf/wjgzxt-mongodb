#encoding : utf-8
class ExportName
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :status, type: Integer
  field :alias, type: String
  validates :alias, :uniqueness => true
  validates :alias, :uniqueness => { :scope => :name }
  belongs_to :user
  #default_scope includes(:user)
end
