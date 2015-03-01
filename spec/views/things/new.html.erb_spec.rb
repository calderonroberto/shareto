require 'rails_helper'

RSpec.describe "things/new", type: :view do
  before(:each) do
    assign(:thing, Thing.new(
      :user => nil
    ))
  end

  it "renders new thing form" do
    render

    assert_select "form[action=?][method=?]", things_path, "post" do

      assert_select "input#thing_user_id[name=?]", "thing[user_id]"
    end
  end
end
