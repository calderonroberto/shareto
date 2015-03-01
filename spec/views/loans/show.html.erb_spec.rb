require 'rails_helper'

RSpec.describe "loans/show", type: :view do
  before(:each) do
    @loan = assign(:loan, Loan.create!(
      :thing => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
