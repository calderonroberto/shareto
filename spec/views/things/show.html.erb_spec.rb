require 'rails_helper'

RSpec.describe "things/show", type: :view do
  before(:each) do
    @thing = assign(:thing, Thing.create!(
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
