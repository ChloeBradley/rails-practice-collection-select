class Person < ActiveRecord::Base
  has_many :job_titles

  def full_name
    "#{first_name} #{last_name}"
  end

end
