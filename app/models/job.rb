class Job
  include Mongoid::Document
  belongs_to :jobs_category
end
