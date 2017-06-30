require 'rails_helper'

RSpec.describe Event, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe Event do

    before(:each) { @event = Event.new(name: 'Cảm ơn Đời - Live Concert Đan Trường') }

    subject { @event }

    it { should respond_to(:name) }

    it "#event returns a string" do
      expect(@event.name).to match 'Cảm ơn Đời - Live Concert Đan Trường'
    end
  end
end
