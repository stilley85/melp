require 'rails_helper'
require_relative '../helpers/populate_test_database.rb'

feature 'delete a restaurant' do
  scenario 'removes restaurant from database' do
    populate_restaurant_db
    visit '/restaurants'
    click_link 'delete-1'
    expect(page).to have_current_path '/restaurants'
    # expect(page).not_to have_content ''
  end
end
