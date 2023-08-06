class Organization
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :short_name, type: String
  field :inn, type: String
  field :kpp, type: String
  field :address, type: String
  field :phone, type: String
end
