class Company
  include Mongoid::Document
  field :name, type: String
  field :location, type: String
  field :logo, type: String
end
