require 'rails_helper'

RSpec.describe 'docs index' do
  context 'with a created twydi' do
    before { create(:doc, title: 'How to use twydi') }
    scenario 'shows the twydi title' do
      visit '/'

      expect(page).to have_content 'How to use twydi'
    end
  end

  context 'without twydies' do
    scenario 'show message saying that there are no twydies' do
      visit '/'
      expect(page).to have_content "Can't find any twydies here :("
    end
  end
end
