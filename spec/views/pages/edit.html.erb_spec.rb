require 'rails_helper'

RSpec.describe "pages/edit", type: :view do
  before(:each) do
    @page = assign(:page, Page.create!(
      :title => "MyString",
      :url => "MyString",
      :archived => false
    ))
  end

  it "renders the edit page form" do
    render

    assert_select "form[action=?][method=?]", page_path(@page), "post" do

      assert_select "input#page_title[name=?]", "page[title]"

      assert_select "input#page_url[name=?]", "page[url]"

      assert_select "input#page_archived[name=?]", "page[archived]"
    end
  end
end
