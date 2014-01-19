class Job
  include Mongoid::Document
  belongs_to :jobs_category

  #Database
  field :job_name, type: String
  field :job_description, type: String
  field :job_apply, type: String
end
