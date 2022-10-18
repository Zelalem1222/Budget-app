require 'rails_helper'

RSpec.describe 'Users' , type: :feature do
    
   describe 'get /users/sign_up' do
    before(:each) do
        visit new_user_registration_path
    end
    it 'renders the sign up page' do
        expect(page).to have_content('Sign up')
    end

    it 'should create a new user' do
        fill_in 'user_name', with: 'Zelalem'
        fill_in 'user_email', with: '123@gmail.com'
        fill_in 'user_password', with: '123456'
        fill_in 'user_password_confirmation', with: '123456'
        click_button 'Sign up'
        expect(page).to have_content('You need to sign in or sign up before continuing.')
    end
  end

  describe '/users/sign_in' do
    before(:each) do
        visit new_user_session_path
    end

    it 'renders the sign in page' do
        expect(page).to have_content('Log in')
    end

    it 'should have a Log in Button' do
        expect(page).to have_button('Log in')
      end
  
      it 'should have a link to Home page' do
        expect(page).to have_content('Email')
        expect(page).to have_content('Password')
      end
  
      it 'should Sign up' do
        page.fill_in 'Email', with: 'gech@gmail.com'
        page.fill_in 'Password', with: '123456'
        click_on 'Log in'
        page.should have_content('Sign up')
      end
 end

end