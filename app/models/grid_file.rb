class GridFile
  include Mongoid::Document
  include Mongoid::GridFs

  grid_fs

  field :filename, type: String
  field :content_type, type: String
end