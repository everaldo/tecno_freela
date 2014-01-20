class Job
  include Mongoid::Document
  include Geocoder::Model::Mongoid
  belongs_to :category

  #Database
  field :name,        type: String
  field :description, type: String
  field :description, type: String
  field :apply,       type: String
  field :address,     type: String
  field :coordinates, type: Array
  field :highlight,   type: Boolean

  #Scopes


  geocoded_by     :address
  after_validation :geocode
end
