require 'rails_helper'
  
describe 'ユーザー新規登録機能' do
    let!(:school) { FactoryBot.create(:school) }
  context 'ユーザー新規登録をした場合' do
    it 'ユーザーが新規登録されること' do
      visit new_user_registration_path
      fill_in 'user_name', with: '1号'
      fill_in 'user_email', with: 'test100@gmail.com'
      select 'DIC', from: 'user_school_id'
      fill_in 'user_password', with: '123456'
      fill_in 'user_password_confirmation', with: '123456'
      click_on 'Sign up'
      expect(page).to have_content '1号'
    end
  end
end

describe 'ログイン機能' do
    let!(:school) { FactoryBot.create(:school) }
    let!(:user) { FactoryBot.create(:user) }
  context 'ログインをクリックした際' do
    it 'ログインができること' do
      visit new_user_session_path
      fill_in 'user_email', with: 'test10@gmail.com'
      fill_in 'user_password', with: '123456'
      click_on 'Log in'
      sleep 1
      save_and_open_page
      expect(page).to have_content 'ログインしました。'
    end
  end
end
  
# describe 'ログアウト機能' do
#     let!(:school) { FactoryBot.create(:school) }
#   context 'ログアウトをクリックした際' do
#     it 'ログアウトが出来ること' do
#       visit new_user_registration_path
#       fill_in 'user_name', with: '1号'
#       fill_in 'user_email', with: 'test100@gmail.com'
#       select 'DIC', from: 'user_school_id'
#       fill_in 'user_password', with: '123456'
#       fill_in 'user_password_confirmation', with: '123456'
#       click_on 'Sign up'
#       expect(page).to have_content '1号'
#       sleep 1
#       save_and_open_page
#     #   find("ログアウト").click
#       click_on 'logout'
#       expect(page).to have_content 'ログアウトしました。'
#     end
#   end
# end

