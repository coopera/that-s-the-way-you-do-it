require 'rails_helper'

RSpec.describe 'editing a doc' do
  context 'when it has a logged user' do
    let!(:user) { create(:user) }
    let!(:doc) { create(:doc, user: user) }
    let(:edited_title) { 'EDITED DOC'}
    
    before { allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user) }

    scenario "editing a doc's title" do
      visit edit_doc_path(doc)

      fill_in 'Title', with: edited_title

      click_on 'SUBMIT TWYDI'

      expect(page).to have_content 'Twydi was successfully updated.'
      expect(page).to have_content edited_title
    end
  end
end
