require 'rails_helper'

describe 'ポートフォリオ管理機能', type: :system do
  # school生成→user生成→portfolio生成の順で作成しなければnotnullに引っ掛かる。
    let!(:school) { FactoryBot.create(:school) }
    let!(:user) { FactoryBot.create(:user) }
    let!(:portfolio) { FactoryBot.create(:portfolio, user: user) }
  before do
    visit root_path
    fill_in 'user_email', with: 'test10@gmail.com'
    fill_in 'user_password', with: '123456'
    click_on 'Log in'
  end

    context 'ポートフォリオを作成した場合' do
      it '作成済みのポートフォリオが表示されること' do
        expect(page).to have_content 'タイトル1'
      end
    end

    context 'ポートフォリオ詳細画面へ移行した場合' do
      it 'ポートフォリオの詳細が表示されること' do
        click_on 'ポートフォリオ詳細へ'
        expect(page).to have_content 'ポートフォリオ詳細'
      end
    end

    context 'いいねランキングへ移行した場合' do
      it 'ランキング一覧が表示されること' do
        click_on 'いいねランキングへ'
        expect(page).to have_content 'いいねランキング'
      end
    end

    context 'マイページへ移行した場合' do
      it 'マイページが表示されること' do
        # binding.irb
        find_by_id("my").click
        # click_on "my"
        expect(page).to have_content '１号のページ'
      end
    end


end