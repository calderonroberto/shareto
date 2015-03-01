require 'rails_helper'

RSpec.describe "loans/new", type: :view do
  before(:each) do
    assign(:loan, Loan.new(
      :thing => nil
    ))
  end

  it "renders new loan form" do
    render

    assert_select "form[action=?][method=?]", loans_path, "post" do

      assert_select "input#loan_thing_id[name=?]", "loan[thing_id]"
    end
  end
end
