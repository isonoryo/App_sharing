FactoryBot.define do
  factory :portfolio do
    name { 'タイトル1' }
    comment { 'コメント1' }
    creation_period { '〜２０時間'}
    study_period { '〜１ヶ月' }
    school_id { 1 }
    deploy_url { 'https://www.yahoo.co.jp/' }
    #「portfolio」は「user」と「school」の外部キーを持っている。
    user
    school
  end

  factory :second_portfolio, class: Portfolio do
    name { 'タイトル2' }
    comment { 'コメント2' }
    creation_period { '２０時間〜４０時間'}
    study_period { '１ヶ月〜２ヶ月' }
    deploy_url { 'https://www.yahoo.co.jp/' }
    school_id { 2 }
    user
    school
  end
end