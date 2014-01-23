class Company
  include Mongoid::Document
  include Mongoid::Timestamps
  include Geocoder::Model::Mongoid

  mount_uploader :logo, CompanyLogoUploader

  has_many :jobs

  field :name,        type: String
  field :url,         type: String
  field :logo,        type: String
  field :email,       type: String
  field :address,     type: String
  field :coordinates, type: Array
  field :highlight,   type: Boolean

  geocoded_by       :address
  after_validation  :geocode
end
