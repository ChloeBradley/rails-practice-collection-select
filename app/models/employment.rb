class Employment < ActiveRecord::Base
  belongs_to :organizations
  belongs_to :people
  belongs_to :job_titles
  belongs_to :locations

end
