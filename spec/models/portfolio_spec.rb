require 'rails_helper'

describe Portfolio, type: :model do
  user = FactoryBot.create(:user)
  it 'nameが空なら登録できない' do
    portfolio = user.portfolios.build(user_id: 1, name: '', comment: 'コメント',
    creation_period:'〜２０時間', study_period: '〜１ヶ月', school_id: 1,
    deploy_url: 'https://www.yahoo.co.jp/' )
    expect(portfolio).not_to be_valid
  end

  it 'commentが空なら登録できない' do
    portfolio = user.portfolios.build(user_id: 1, name: '1号', comment: '',
    creation_period:'〜２０時間', study_period: '〜１ヶ月', school_id: 1,
    deploy_url: 'https://www.yahoo.co.jp/' )
    expect(portfolio).not_to be_valid
  end

  it 'creation_periodが空なら登録できない' do
    portfolio = user.portfolios.build(user_id: 1, name: '1号', comment: 'コメント',
    creation_period:'', study_period: '〜１ヶ月', school_id: 1,
    deploy_url: 'https://www.yahoo.co.jp/' )
    expect(portfolio).not_to be_valid
  end

  it 'study_periodが空なら登録できない' do
    portfolio = user.portfolios.build(user_id: 1, name: '1号', comment: 'コメント',
    creation_period:'〜２０時間', study_period: '', school_id: 1,
    deploy_url: 'https://www.yahoo.co.jp/' )
    expect(portfolio).not_to be_valid
  end

  it 'deployurlが空なら登録できない' do
    portfolio = user.portfolios.build(user_id: 1, name: '1号', comment: 'コメント',
    creation_period:'〜２０時間', study_period: '〜１ヶ月', school_id: 1,
    deploy_url: '' )
    expect(portfolio).not_to be_valid
  end

  it 'deployurlが不正な入力なら登録できない' do
    portfolio = user.portfolios.build(user_id: 1, name: '1号', comment: 'コメント',
    creation_period:'〜２０時間', study_period: '〜１ヶ月', school_id: 1,
    deploy_url: 'アイウエオ' )
    expect(portfolio).not_to be_valid
  end

  it '必須項目が全て済みであれば、登録できる' do
    portfolio = user.portfolios.build(user_id: 1, name: '1号', comment: 'コメント',
    creation_period:'〜２０時間', study_period: '〜１ヶ月', school_id: 1,
    deploy_url: 'https://www.yahoo.co.jp/' )
    expect(portfolio).to be_valid
  end
end
