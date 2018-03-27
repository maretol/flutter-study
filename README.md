# flutter-study

FlutterつかってUIの実装チェックとかAPIの調べごととかするやつ

# コミットログ

 - コミットはなんかいい感じにまとまったらやってる
 - 画像とか静的データは content 内に残しとく
 - 一段落したらコミットする

## zuiho

https://flutter.io/tutorials/layout/ をもとに作ったやつ。瑞鳳の紹介とかそれっぽいアイコンをおいただけ

## List

ListViewを使用してあれこれするもの。FlowingButtonでリストを追加した

 - Listに追加するときになんでか知らないけど body/listview/children のリストは.toList()かまさないとうまく追加できないっぽい
 - exampleのleave_behind_demoあたり参考にするといいと思うよ

## listview and tab

タブとリストを組み合わせてみたもの。追加ボタンを押すと表示中のリストにだけ追加されていく

 - tabcontroller の処理が若干面倒（だった。実際動かすとそうでもない）
 - ここまで来ると若干重い気がする。端末がNexus 5Xだからかも知れない
   - 2015年の端末だからね。もう3年前だよそりゃ重いわ

