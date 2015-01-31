require 'rails_helper'

RSpec.describe "reviews/new", :type => :view do
  before(:each) do
    assign(:review, Review.new(
      :hospital => nil,
      :user => nil,
      :content => "MyText"
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input#review_hospital_id[name=?]", "review[hospital_id]"

      assert_select "input#review_user_id[name=?]", "review[user_id]"

      assert_select "textarea#review_content[name=?]", "review[content]"
    end
  end
end
