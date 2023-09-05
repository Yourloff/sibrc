require 'mongoid/grid_fs'
class Organization
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :short_name, type: String
  field :inn, type: String
  field :kpp, type: String
  field :address, type: String
  field :phone, type: String
  field :filename, type: String
  field :content_type, type: String
end
