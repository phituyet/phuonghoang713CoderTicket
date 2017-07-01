require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :name => "Name",
        :hero_image_url => "Hero Image Url",
        :extended_html_description => "MyText",
        :references => "References",
        : => "",
        :references => "References",
        : => ""
      ),
      Event.create!(
        :name => "Name",
        :hero_image_url => "Hero Image Url",
        :extended_html_description => "MyText",
        :references => "References",
        : => "",
        :references => "References",
        : => ""
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Hero Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "References".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "References".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
