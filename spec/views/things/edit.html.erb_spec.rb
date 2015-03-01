require 'rails_helper'

RSpec.describe "things/edit", type: :view do
  before(:each) do
    @thing = assign(:thing, Thing.create!(
      :user => nil
    ))
  end

  it "renders the edit thing form" do
    render

    assert_select "form[action=?][method=?]", thing_path(@thing), "post" do

      assert_select "input#thing_user_id[name=?]", "thing[user_id]"
    end
  end
end
