class Company
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :location, type: String
  field :logo, type: String
end
