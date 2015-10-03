require 'rails_helper'

RSpec.describe 'create a new twydi' do
  context "when it has a logged user" do
    before do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(create(:user))
    end

    scenario 'writing a twydi' do
      visit new_doc_path

      fill_in 'Title', with: 'Creating a twydi'
      fill_in 'Description', with: 'Here we will describe how to write a twydi'
      fill_in 'Implementation', with: 'Write the twydi using markdown'

      click_on 'SUBMIT TWYDI'

      expect(page).to have_content 'Twydi was successfully created.'
    end
  end
end
