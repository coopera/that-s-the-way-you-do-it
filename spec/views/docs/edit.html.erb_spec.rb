require 'rails_helper'

RSpec.describe "docs/edit", type: :view do
  before(:each) do
    @doc = assign(:doc, create(:doc))
  end

  it "renders the edit doc form" do

    allow(DocsController).to receive(:logged_in?).and_return(false)

    render

    assert_select "form[action=?][method=?]", doc_path(@doc), "post" do
    end
  end
end
