class Organization < ActiveRecord::Base
  has_many :people
  has_many :job_titles

end
