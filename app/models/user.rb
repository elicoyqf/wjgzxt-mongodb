class User
  include Mongoid::Document
  include Mongoid::Timestamps
  field :level, type: Integer
  field :status, type: Integer
  field :uname, type: String
  field :password, type: String
  field :alias, type: String
  field :email, type: String
  field :contact, type: String

  validates :uname, :uniqueness => true
  has_many :export_names
  has_many :report_logs
end
