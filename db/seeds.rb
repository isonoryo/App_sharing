# 使用言語
ProgrammingLanguage.create!(
  [
    {name: 'Ruby'},
    {name: 'Python'},
    {name: 'Java'},
    {name: 'C#'},
    {name: 'C言語/C++'},
    {name: 'JavaScript'},
    {name: 'PHP'},
    {name: 'Swift'},
    {name: 'Scala'},
    {name: 'Kotlin'},
    {name: 'Go'},
    {name: 'VisualBasic.NET'},
    {name: 'R'},
  ]
)

# スクール
School.create!(
  [
    {name: '独学'},
    {name: 'DIVE INTO CODE'},
    {name: 'TECH::EXPERT'},
    {name: 'プログラマカレッジ'},
    {name: 'CodeCamp'},
    {name: 'WebCamp'},
    {name: 'DMM WEBCAMP'},
    {name: 'TECH::CAMP'},
    {name: '侍エンジニア塾'},
    {name: 'KENスクール'},
    {name: 'GEEK JOB'},
    {name: '.Pro'},
    {name: 'ヒューマンアカデミー'},
    {name: 'リナックスアカデミー'},
    {name: 'TechAcademy'},
    {name: 'CodeShip'},
    {name: 'LIKEIT'},
    {name: 'Schoo'},
    {name: 'ウェブカツ'},
    {name: 'Aidemy'},
    {name: 'TechAcademy'},
    {name: 'その他'}
  ]
)

# ユーザー
[
  ['磯野', 'isono@gmail.com', '2', '2019-11-1', 'isonoisono','isonoisono'],
  ['坂本', 'sakamoto@gmail.com', '1', '2000-11-1', 'sakamoto','sakamoto'],
  ['鈴木', 'suzuki@gmail.com', '4', '1999-11-1', 'suzuki','suzuki']
].each do |name, email, school_id, learning_start, password, password_confirmation|
  User.create!(
    { name: name, email: email, school_id: school_id, learning_start: learning_start, password: password, password_confirmation: password_confirmation }
  )
end

# ポートフォリオ言語無し
[
  ['ブログ', '大変でした', '２０時間〜４０時', '半年〜１年', 'https://teratail.com/','3', '20', '4'],
  ['メルカリクローン', 'レビューくれたら嬉しいです', '２０時間〜４０時', '１ヶ月〜２ヶ月', 'https://teratail.com/','1', '15', '2'],
  ['ツイッタークローン', 'コメント機能大変でした', '〜２０時間', '〜１ヶ月', 'https://teratail.com/','2', '30', '1'],
  ['アプリ', '初作品です', '〜２０時間', '〜１ヶ月', 'https://teratail.com/','1', '17', '2'],
  ['インスタクローン', '画像機能大変でした', '６０時間〜１００時', '半年〜１年', 'https://teratail.com/','2', '6', '1'],
  ['からあげくん', 'からあげ大好き', '６０時間〜１００時', '半年〜１年', 'https://teratail.com/','3', '4', '4']
].each do |name, comment, creation_period, study_period, deploy_url, user_id, likes_count, school_id|
  Portfolio.create!(
    { name: name, comment: comment, creation_period: creation_period, study_period: study_period, deploy_url: deploy_url,
      user_id: user_id, likes_count: likes_count, school_id: school_id }
  )
end

# ポートフォリオ言語有り
# [
#   ['ブログ', '大変でした', '２０時間〜４０時', '半年〜１年', 'https://teratail.com/','3', '20', '4', '["1", "2", "3", "4"]'],
#   ['メルカリクローン', 'レビューくれたら嬉しいです', '２０時間〜４０時', '１ヶ月〜２ヶ月', 'https://teratail.com/','1', '15', '2', '["1", "2", "6", "7"]'],
#   ['ツイッタークローン', 'コメント機能大変でした', '〜２０時間', '〜１ヶ月', 'https://teratail.com/','2', '30', '1', '["3", "4", "5", "12"]'],
#   ['アプリ', '初作品です', '〜２０時間', '〜１ヶ月', 'https://teratail.com/','1', '17', '2', '["1", "7", "10", "11"]'],
#   ['インスタクローン', '画像機能大変でした', '６０時間〜１００時', '半年〜１年', 'https://teratail.com/','2', '6', '1', '["1", "2", "4", "8"]'],
#   ['からあげくん', 'からあげ大好き', '６０時間〜１００時', '半年〜１年', 'https://teratail.com/','3', '4', '4', '["2", "3", "6", "9"]']
# ].each do |name, comment, creation_period, study_period, deploy_url, user_id, likes_count, school_id, programming_language_ids|
#   Portfolio.create!(
#     { name: name, comment: comment, creation_period: creation_period, study_period: study_period, deploy_url: deploy_url,
#       user_id: user_id, likes_count: likes_count, school_id: school_id, programming_language_ids: programming_language_ids }
#   )
# end
