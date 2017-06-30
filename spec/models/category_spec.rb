require 'rails_helper'

RSpec.describe Category, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe Category do

    before(:each) { @category = Category.new(name: 'Entertainment') }

    subject { @category }

    it { should respond_to(:name) }

    it "#name returns a string in Category" do
      expect(@category.name).to match 'Entertainment'
    end
  end
end
