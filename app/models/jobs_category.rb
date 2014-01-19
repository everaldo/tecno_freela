class JobsCategory
  include Mongoid::Document
  has_many :jobs

  #Database
  field :category_name, type: String
end
