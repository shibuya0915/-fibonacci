# フィボナッチ数を返すAPIサービス開発

##　実行環境
* 使用言語
  * Ruby 3.3.4
* 使用フレームワーク
  * sinatra
* 使用サーバー
  * render.com
* ユニットテスト
 * RSpec 3.13

##　ファイル構成
  * fibonacci.rb
  * result.rb
  * fibonacci_spec.rb
  * pages.rb
  * app.rb

  ## プログラム概要
    * 指定したn番目のフィボナッチ数を返すAPIを作成した。以下の制約で数値を入力してください。
      * 1 <= n <= 8695
      * nは整数のみ

  ## エラーコード
    エラーコードを

  ## ユニットテスト
    * テストケースを以下に記載する
      * n = -1
      * n = 0
      * n = 3.14
      * n = 12
      * n = 100
      * n = 5000
      * n = 8695
      * n = 8696
      * n = 10000
      * n = abc


## エンドポイントURL
  * https://fib-api-8nnm.onrender.com/submit/