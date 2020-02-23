require 'rails_helper'

describe 'ポートフォリオ管理機能', type: :system do
    let(:user) { create(:user) }
    let(:school) { create(:school, user: user) }
    let(:portfolio) { create(:portfolio, user: user, school: shcool) }
  before do
    visit root_path
    fill_in 'user_email', with: 'test10@gmail.com'
    fill_in 'user_password', with: '123456'
    # save_and_open_page
    # sleep 1
    click_on 'Log in'
  end

    context 'ポートフォリオを作成した場合' do
      it '作成済みのポートフォリオが表示されること' do
        expect(page).to have_content 'タイトル1'
      end
    end




  # describe 'ポートフォリオ登録画面' do
  #   context '必要項目を入力して、createボタンを押した場合' do
  #     it 'データが保存されること'
  #   end
  # end
  # describe 'ポートフォリオ詳細画面' do
  #    context '任意のポートフォリオ詳細画面に遷移した場合' do
  #      it '該当ポートフォリオの内容が表示されたページに遷移すること'
  #    end
  # end
end