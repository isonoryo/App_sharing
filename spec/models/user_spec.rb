require 'rails_helper'

describe 'ユーザー登録機能', type: :model do
  before do
    @user = FactoryBot.create(:user)
  end

  it 'nameが空なら登録できない' do
    @user.name = ''
    expect(@user.valid?).to eq(false)
  # user = User.new(name: '', email: 'test10@gmail.com', school_id: 1,
  # learning_start: '1999-1-1', password: '123456')
  # binding.irb
  # expect(user).not_to be_valid
  end

  it 'emailが空なら登録できない' do
    @user.email = ''
    expect(@user.valid?).to eq(false)
  end

  it 'emailが不正な入力だと登録できない' do
    @user.email = 'あいうえお'
    expect(@user.valid?).to eq(false)
  end

  it 'パスワードが空だと登録できない' do
    @user.password = ''
    @user.password_confirmation = ''
    expect(@user.valid?).to eq(false)
  end

  it 'パスワードが6文字未満だと登録できない' do
    @user.password = '１２３４５'
    @user.password_confirmation = '１２３４５'
    expect(@user.valid?).to eq(false)
  end

  it 'スクールが空だと登録できない' do
    @user.school_id = ''
    expect(@user.valid?).to eq(false)
  end

  it '必須項目が全て入力済みであれば、登録できる' do
    expect(@user.valid?).to eq(true)
  end

end
