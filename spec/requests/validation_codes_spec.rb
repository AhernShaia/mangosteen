require 'rails_helper'

RSpec.describe "ValidationCodes", type: :request do
  describe "驗證碼" do
    it "可以發送請求" do
      post '/api/v1/validation_codes', params: { email: 'z123456@879.com'}
      expect(response).to have_http_status(200)
    end
  end
end
