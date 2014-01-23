class Job
  include Mongoid::Document
  include Mongoid::Timestamps

  #Relationships
  belongs_to :category
  belongs_to :company # Ou contractor

  #Database
  field :name,        type: String
  field :description, type: String
  field :apply,       type: String
  field :highlight,   type: Boolean
end
