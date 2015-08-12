require 'rails_helper'

RSpec.describe "docs/new", type: :view do
  before(:each) do
    assign(:doc, build(:doc))
  end

  it "renders new doc form" do
    render

    assert_select "form[action=?][method=?]", docs_path, "post" do
    end
  end
end
