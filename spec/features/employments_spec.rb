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

  scenario 'User can select job title' do
    job_title = JobTitle.create!(
    name: "Manager"
    )

    visit root_path
    click_on "New Employment"
    select job_title.name, from: :employment_job_title_id
  end

  scenario 'User can select a location' do
    location = Location.create!(
    name: "1035 Pearl"
    )

    visit root_path
    click_on "New Employment"
    select location.name, from: :employment_location_id
  end

  scenario "User can select person, organzation, job title and location from new employments page" do
    person = Person.create!(
      first_name: "Firsty",
      last_name: "Lasty"
    )

    organization = Organization.create!(
    name: "gSchool"
    )

    job_title = JobTitle.create!(
    name: "Manager"
    )

    location = Location.create!(
    name: "1035 Pearl"
    )

    visit root_path
    click_on "New Employment"

    select person.full_name, from: :employment_person_id
    select organization.name, from: :employment_organization_id
    select job_title.name, from: :employment_job_title_id
    select location.name, from: :employment_location_id
    click_on "Create Employment"

    expect(current_path).to eq(employments_path)

  end    
end
