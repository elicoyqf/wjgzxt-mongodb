class ReportLog
  include Mongoid::Document
  include Mongoid::Timestamps
  field :r_date, type: DateTime
  field :r_type, type: String
  field :view_date, type: DateTime

  validates :r_type, :uniqueness => { :scope => [:r_date,:user_id] }
  belongs_to :user
  #default_scope includes(:user)
end
