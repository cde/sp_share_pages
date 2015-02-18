require 'rails_helper'

RSpec.describe "pages/new", type: :view do
  before(:each) do
    assign(:page, Page.new(
      :title => "MyString",
      :url => "MyString",
      :archived => false
    ))
  end

  it "renders new page form" do
    render

    assert_select "form[action=?][method=?]", pages_path, "post" do

      assert_select "input#page_title[name=?]", "page[title]"

      assert_select "input#page_url[name=?]", "page[url]"

      assert_select "input#page_archived[name=?]", "page[archived]"
    end
  end
end
