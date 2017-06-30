require 'rails_helper'

RSpec.describe Region, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe Region do

    before(:each) { @region = Region.new(name: 'Quang Ngai') }

    subject { @region }

    it { should respond_to(:name) }

    it "#name returns a string in Region" do
      expect(@region.name).to match 'Quang Ngai'
    end
  end
end
