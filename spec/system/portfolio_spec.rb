require 'rails_helper'
RSpec.describe 'ポートフォリオ管理機能', type: :system do
  before do
    FactoryBot.create(:portfolio)
    FactoryBot.create(:second_portfolio)
  end

  describe 'ポートフォリオ一覧画面' do
    context 'ポートフォリオを作成した場合' do
      it '作成済みのポートフォリオが表示されること'
        visit portfolios_path #ポートフォリオ一覧へ移動
        expect(page).to have_content 'タイトル1' #タスクにタイトル１が含まれているか確認
    end
  end

  describe 'ポートフォリオ登録画面' do
    context '必要項目を入力して、createボタンを押した場合' do
      it 'データが保存されること'
    end
  end
  describe 'ポートフォリオ詳細画面' do
     context '任意のポートフォリオ詳細画面に遷移した場合' do
       it '該当ポートフォリオの内容が表示されたページに遷移すること'
     end
  end
end