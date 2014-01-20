class Job
  include Mongoid::Document
  include Mongoid::Timestamps
  include Geocoder::Model::Mongoid

  #Uploader
  #mount_uploader :company_logo, CompanyLogoUploader

  #Relationships
  #belongs_to :jobs_category
  belongs_to :category

  #Database
  #field :company_location, type: String
  #field :company_name, type: String
  #field :company_url, type: String
  #field :company_logo, type: String
  #field :company_email, type: String

  #Database
  field :name,        type: String
  field :description, type: String
  field :apply,       type: String
  field :address,     type: String
  field :coordinates, type: Array
  field :highlight,   type: Boolean

  #Scopes
  geocoded_by       :address
  after_validation  :geocode
end
