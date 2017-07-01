require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      :name => "MyString",
      :hero_image_url => "MyString",
      :extended_html_description => "MyText",
      :references => "MyString",
      : => "",
      :references => "MyString",
      : => ""
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_hero_image_url[name=?]", "event[hero_image_url]"

      assert_select "textarea#event_extended_html_description[name=?]", "event[extended_html_description]"

      assert_select "input#event_references[name=?]", "event[references]"

      assert_select "input#event_[name=?]", "event[]"

      assert_select "input#event_references[name=?]", "event[references]"

      assert_select "input#event_[name=?]", "event[]"
    end
  end
end
