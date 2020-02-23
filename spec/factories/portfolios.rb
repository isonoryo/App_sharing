FactoryBot.define do
  factory :portfolio do
    name { 'タイトル1' }
    comment { 'コメント1' }
    creation_period { '〜２０時間'}
    study_period { '〜１ヶ月' }
    deploy_url { 'https://www.yahoo.co.jp/' }
    programming_language { 'sample1' }
  end

  factory :second_portfolio, class: Portfolio do
    name { 'タイトル2' }
    comment { 'コメント2' }
    creation_period { '２０時間〜４０時間'}
    study_period { '１ヶ月〜２ヶ月' }
    deploy_url { 'https://www.yahoo.co.jp/' }
    programming_language { 'sample1' }
  end
end
