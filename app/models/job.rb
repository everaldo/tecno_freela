class Job
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Taggable

  #Relationships
  belongs_to :category
  belongs_to :company # Ou contractor

  validates :name, presence: true

  #Database
  field :name,        type: String
  field :description, type: String
  field :apply,       type: String
  field :highlight,   type: Boolean, default: false
  # tags_separator ','
end
