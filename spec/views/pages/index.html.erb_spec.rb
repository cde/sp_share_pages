require 'rails_helper'

RSpec.describe "pages/index", type: :view do
  before(:each) do
    assign(:pages, [
      Page.create!(
        :title => "Title",
        :url => "Url",
        :archived => false
      ),
      Page.create!(
        :title => "Title",
        :url => "Url",
        :archived => false
      )
    ])
  end

  it "renders a list of pages" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
