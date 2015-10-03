require 'rails_helper'

RSpec.describe "docs/index", type: :view do
  before(:each) do
    assign(:docs, [
      create(:doc),
      create(:doc)
    ])
    assign(:q, Doc.ransack(params[:q]))
  end

  skip it "renders a list of docs" do
    render
  end
end
