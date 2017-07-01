require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  describe "GET #index" do
    it "responds 200 when visiting" do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  
end
