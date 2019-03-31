require 'rails_helper'

RSpec.describe "ClauseMasters", type: :request do
  describe "GET /clause_masters" do
    it "works! (now write some real specs)" do
      get clause_masters_path
      expect(response).to have_http_status(200)
    end
  end
end
