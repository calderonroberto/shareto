require 'rails_helper'

RSpec.describe "things/index", type: :view do
  before(:each) do
    assign(:things, [
      Thing.create!(
        :user => nil
      ),
      Thing.create!(
        :user => nil
      )
    ])
  end

  it "renders a list of things" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
