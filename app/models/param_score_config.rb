class ParamScoreConfig
  include Mongoid::Document
  include Mongoid::Timestamps
  field :bad, type: Integer
  field :better, type: Integer
  field :good, type: Integer
  field :normal, type: Integer
  field :param_name, type: String
  field :param_type, type: String
  field :worse, type: Integer
  field :weight, type: Integer
  field :alias, type: String
  field :lower_limit, type: Float
  field :upper_limit, type: Float
  field :item_type, type: Integer
end
