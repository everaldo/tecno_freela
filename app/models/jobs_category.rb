class JobsCategory
  include Mongoid::Document
  has_many :jobs
end
