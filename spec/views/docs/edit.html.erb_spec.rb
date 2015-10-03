require 'rails_helper'

RSpec.describe "docs/edit", type: :view do
  before(:each) do
    @doc = assign(:doc, create(:doc))
  end

  skip it "renders the edit doc form" do
    render

    assert_select "form[action=?][method=?]", doc_path(@doc), "post" do
    end
  end
end
