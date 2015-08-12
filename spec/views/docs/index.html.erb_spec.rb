require 'rails_helper'

RSpec.describe "docs/index", type: :view do
  before(:each) do
    assign(:docs, [
      create(:doc),
      create(:doc)
    ])
  end

  it "renders a list of docs" do
    render
  end
end
