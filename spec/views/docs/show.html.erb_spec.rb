require 'rails_helper'

RSpec.describe "docs/show", type: :view do
  before(:each) do
    @doc = assign(:doc, create(:doc))
  end

  it "renders attributes in <p>" do
    render
  end
end
