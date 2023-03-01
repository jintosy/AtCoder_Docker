# 概要
AtCoderをDocker上で楽に作業したい

# 使い方
## コンテナ起動
```
# ビルド
$ docker compose build
# 起動
$ docker compose up -d
# コンテナに入る
$ docker compose exec app bash
```

## コンテナ内作業
```
# atcoderにログイン(user/pass入力)
$ acc login
$ oj login https://atcoder.jp/

# コンテストの問題をダウンロード
$ acc new abcXXX

# 各問題ディレクトリに移動
$ cd abcXXX/n

# 落とした入出力例を使って作成したコードをテスト
$ oj t -c "各言語の実行コマンド ソース名" -d ./tests/

# ソースを提出
$ acc s ソース名
```
