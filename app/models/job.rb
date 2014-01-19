class Job
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :jobs_category

  #Database
  field :job_name, type: String
  field :job_description, type: String
  field :job_apply, type: String
  field :company_location, type: String
  field :company_name, type: String
  field :company_url, type: String
  field :company_logo, type: String
  field :company_email, type: String
end
