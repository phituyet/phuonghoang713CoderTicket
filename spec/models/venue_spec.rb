require 'rails_helper'

RSpec.describe Venue, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe Venue do

    before(:each) { @venue = Venue.new(name: 'Sân vận động quân khu 7') }

    subject { @venue }

    it { should respond_to(:name) }

    it "#name returns a string Venue" do
      expect(@venue.name).to match 'Sân vận động quân khu 7'
    end
  end
end
