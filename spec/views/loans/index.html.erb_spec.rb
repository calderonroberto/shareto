require 'rails_helper'

RSpec.describe "loans/index", type: :view do
  before(:each) do
    assign(:loans, [
      Loan.create!(
        :thing => nil
      ),
      Loan.create!(
        :thing => nil
      )
    ])
  end

  it "renders a list of loans" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
