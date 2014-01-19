class JobsCategory
  include Mongoid::Document
  include Mongoid::Timestamps

  #Validations
  validates :category_name, presence: true
  #Relationships
  has_many :jobs

  #Database
  field :category_name, type: String
end
