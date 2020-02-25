# README

# App sharing

# 概要
「自作ポートフォリオ共有及び、評価サービス」
- プログラミングを始めたけど、周りのみんなはどんなポートフォリオを作っているだろう？
- どのくらいの時間を掛けてるの？どんな技術を使っているの？スクールは？独学？
- 自分の作ったサービスをみんなに知ってもらいたい！感想を聞きたい！
- すごいポートフォリオを作るエンジニアを見つけたい！

そんな悩みを持つエンジニア達や、実力のあるエンジニアを見つけたい方（企業等）の為の自作ポートフォリオ投稿サービスです！
# バージョン情報
- Ruby 2.6.5
- Rails 5.2.3

# 機能一覧

- ※ポートフォリオ投稿機能

    自作ポートフォリオの「アプリ名」「デプロイ先」「github」「使用言語」「作成期間（時間）」「コメント」の登録が出来る。


- ※ユーザー登録機能

     投稿者の「名前」「写真」「メールアドレス」「自己紹介」「学習開始時期」「スクール卒か独学か」が登録出来る。


- ログイン機能


- ポートフォリオ投稿一覧

     登録新着順で表示、ユーザー毎の投稿ポートフォリオ一覧も表示可能。


- いいね機能

     投稿されたポートフォリオに対して、いいね出来る。


- コメント機能

     投稿されたポートフォリオに対して、コメント出来る。


- ランキング機能

     「いいね数」のランキング表示。


- 検索機能

    「アプリ名」「使用言語」「作成期間」「作成時のプログラミング歴」「スクール名」でポートフォリオ検索が出来る。

　　※はログイン必須の機能。他はログイン不要。

# カタログ設計
https://docs.google.com/spreadsheets/d/10mFp3XwOoZge0v3F7hEtjKjKxaRzcMiO7ed2I45bZ8M/edit#gid=1495954817
# テーブル定義
https://docs.google.com/spreadsheets/d/10mFp3XwOoZge0v3F7hEtjKjKxaRzcMiO7ed2I45bZ8M/edit#gid=71971291
# ER図
https://docs.google.com/spreadsheets/d/10mFp3XwOoZge0v3F7hEtjKjKxaRzcMiO7ed2I45bZ8M/edit#gid=654406008
# 画面遷移図
https://docs.google.com/spreadsheets/d/10mFp3XwOoZge0v3F7hEtjKjKxaRzcMiO7ed2I45bZ8M/edit#gid=1621467328
# ワイヤーフレーム
https://docs.google.com/spreadsheets/d/10mFp3XwOoZge0v3F7hEtjKjKxaRzcMiO7ed2I45bZ8M/edit#gid=846827472
# 使用Gem
- carrierwave
- mini_magick
- devise
- kaminari
- ransack