class LocaleData
  include Mongoid::Document
  include Mongoid::Timestamps
  field :locale_name, type: String
  field :locale_number, type: Integer
end
