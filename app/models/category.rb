class Category
  include Mongoid::Document
  include Mongoid::Timestamps

  #Validations
  validates :name, presence: true, uniqueness: true

  #Relationships
  has_many :jobs

  #Database
  field :name, type: String
end
