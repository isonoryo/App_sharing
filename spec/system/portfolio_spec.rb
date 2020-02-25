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

  context 'ポートフォリオを一覧画面へ遷移した場合' do
    it '作成済みのポートフォリオが表示されること' do
      expect(page).to have_content 'タイトル1'
    end
  end

  context 'ポートフォリオ詳細画面へ遷移した場合' do
    it 'ポートフォリオの詳細が表示されること' do
      click_on 'ポートフォリオ詳細へ'
      expect(page).to have_content 'ポートフォリオ詳細'
    end
  end

  context 'いいねランキングへ遷移した場合' do
    it 'ランキング一覧が表示されること' do
      visit ranking_portfolios_path
      expect(page).to have_content 'いいねランキング'
    end
  end

  context 'マイページへ遷移した場合' do
    it 'マイページが表示されること' do
      user_registration_path
      expect(page).to have_content '1号のページ'
    end
  end
end

describe 'ポートフォリオ検索機能', type: :system do
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

  context 'アプリ名で検索した場合' do
    it '該当アプリが表示されること' do
      visit portfolios_path
      fill_in 'q_name_cont', with: 'タイトル1'
      click_on 'send'
      expect(page).to have_content 'タイトル1'
    end
  end

  context '制作時間で検索した場合' do
    it '該当アプリが表示されること' do
      visit portfolios_path
      select '〜２０時間', from: 'q_creation_period_eq'
      click_on 'send'
      expect(page).to have_content '〜２０時間'
    end
  end

  context '学習歴で検索した場合' do
    it '該当アプリが表示されること' do
      visit portfolios_path
      select '〜１ヶ月', from: 'q_study_period_eq'
      click_on 'send'
      expect(page).to have_content '〜１ヶ月'
    end
  end

  context 'スクールで検索した場合' do
    it '該当アプリが表示されること' do
      visit portfolios_path
      select 'DIC', match: :first, from: 'q_school_id_eq'
      click_on 'send'
      sleep 1
      expect(page).to have_content '検索結果'
      # expect(page).to have_content 'DIC'
    end
  end
end

describe 'ポートフォリオコメント機能', type: :system do
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

  context 'コメントを作成した場合' do
    it 'コメントが表示されること' do
      visit portfolios_path
      click_on 'ポートフォリオ詳細へ', match: :first
      fill_in 'portfolio_comment_comment', with: 'コメント'
      click_on 'Portfolio Comment'
      expect(page).to have_content 'コメントが投稿されました'
      expect(page).to have_content 'コメント'
    end
  end

  
end


