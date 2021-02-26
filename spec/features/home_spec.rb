require 'rails_helper'

RSpec.feature 'Home', type: :feature do

  context 'Fill form' do
    scenario 'fill input text' do
      visit home_form_path
      fill_in 'fname', with: 'Kleber'

      expect(page).to have_field 'fname', with: 'Kleber'
    end
  end

end