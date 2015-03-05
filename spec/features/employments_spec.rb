require 'rails_helper'

feature 'employment' do

  scenario 'User select from all people on new employment page' do
    person = Person.create!(
      first_name: "Firsty",
      last_name: "Lasty"
    )
    visit root_path
    click_link "New Employment"
    select person.full_name, from: :employment_person_id
  end

  scenario 'User can select organization' do
    organization = Organization.create!(
    name: "gSchool"
    )

    visit new_employment_path
    select organization.name, from: :employment_organization_id
  end
end
