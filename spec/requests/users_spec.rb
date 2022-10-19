require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'get /users/sign_up' do
    it 'renders the sign up page' do
      get new_user_registration_path
      expect(response).to have_http_status(200)
    end
  end

  describe '/users/sign_in' do
    it 'renders the sign in page' do
      get new_user_session_path
      expect(response).to have_http_status(200)
    end
  end
end
