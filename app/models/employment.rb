class Employment < ActiveRecord::Base
  belongs_to :organization
  belongs_to :person
  belongs_to :job_title
  belongs_to :location

end
