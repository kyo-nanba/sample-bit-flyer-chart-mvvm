# sample-bit-flyer-chart-mvvm

MVVMや各種フレームワークの学習用プロジェクトです。

最近bit coinをよく見るのでbit flyer FXのチャートを表示するアプリ+αを作ろうと思います。

## このプロジェクトでやりたいこと

- [x] Swift4
- [x] MVVMアーキテクチャ
- [x] RxSwift
- [ ] ~Carthage (今までCocoaPodsしか使ってなかったので)~
  - CocoaPodsに変更。Carthageだとシンプルなライブラリならば特に問題なく導入できたのだが、RxSwiftのテスト用モジュールであるRxTestや、R.swiftのようなプロジェクトを動的に書き換えるようなものについてはの導入コストが高かったので、学習という目的は一定レベルで満たしたと考え今回はCocoaPodsに切り替えた
- [ ] Realm
- [ ] Unit Test
- [ ] UI Test
