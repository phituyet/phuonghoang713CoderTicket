require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :name => "Name",
      :hero_image_url => "Hero Image Url",
      :extended_html_description => "MyText",
      :references => "References",
      : => "",
      :references => "References",
      : => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Hero Image Url/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/References/)
    expect(rendered).to match(//)
    expect(rendered).to match(/References/)
    expect(rendered).to match(//)
  end
end
