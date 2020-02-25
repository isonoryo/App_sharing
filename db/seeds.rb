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