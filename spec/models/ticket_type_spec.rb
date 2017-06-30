require 'rails_helper'

RSpec.describe TicketType, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe TicketType do

    before(:each) { @ticket_type = TicketType.new(name: 'Việt Nam Thử Thách Chiến Thắng ( Giá chính thức)') }

    subject { @ticket_type }

    it { should respond_to(:name) }

    it "#name returns a string for TicketType" do
      expect(@ticket_type.name).to match 'Việt Nam Thử Thách Chiến Thắng ( Giá chính thức)'
    end
  end
end
