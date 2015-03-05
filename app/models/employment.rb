class Employment < ActiveRecord::Base
  has_many :organizations
  has_many :people
  has_many :job_titles, through: :people
  has_many :locations

end
