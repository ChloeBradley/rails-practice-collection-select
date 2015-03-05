class Employment < ActiveRecord::Base
  belongs_to :organization
  belongs_to :person
  belongs_to :job_title
  belongs_to :location

  validates :organization, presence: true
  validates :job_title, presence: true

end
