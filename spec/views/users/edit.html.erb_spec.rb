require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "MyString",
      :description => "MyText",
      :title => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_latitude[name=?]", "user[latitude]"

      assert_select "input#user_longitude[name=?]", "user[longitude]"

      assert_select "input#user_address[name=?]", "user[address]"

      assert_select "textarea#user_description[name=?]", "user[description]"

      assert_select "input#user_title[name=?]", "user[title]"
    end
  end
end
