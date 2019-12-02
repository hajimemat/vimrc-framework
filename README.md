# vimrc-framework

VIMの設定を効率よく変更する為に、フレームワーク化する

## 要求

1. VIMを使いたい状況は色々ある。
   サーバで設定ファイルを触る時、
   PHPを書く時、HTMLを書く時。
   デスクトップでドキュメントを書く時とか。
1. キーマップ、テーマなど趣味によるものは機能と分けて管理する
1. プラグインは導入しやすいように参考になる初期設定を管理する

## 基本設計

### 共通処理

共通処理となりうるもの

1. 環境判定
1. 設定するための処理関数

### システム構成

**依存ライブラリ**

- 
  - [dein.vim](https://github.com/Shougo/dein.vim) 
  - プラグイン管理用プラグイン

### プラグインの利用

1. `default/プラグイン名.vim`にインストールと基本的な設定を記述する
1. 使用したい`contex/コンテキスト名.vim`で`LoadSource('プラグイン名')`で呼び出す

### ContextとFlavor

作ろうとする設定をContextかFlavorかで分けて考える。

Contextは拡張機能の導入を中心に設計し、
Flavorはキーマップ、見た目の設定を中心に設計する。



## 詳細設計

### 共通処理

- オートコマンドグループ名は`NoraAutoCmd`とする
- 新しいコンテキストを設計する場合は、READMEに追記する
- 新しいフレーバを設計する場合は、READMEに追記する
- コンテキストをまたいで使用される設定はKernelに追加する

### ファイル構成

```plantuml
salt
{
  {T
    + ./nvim.init <- nvim用のエントリーポイント
    + ./vimrc
    + ./config/ <- 設定置場
    + ./context/ <- コンテクスト置場
    + ./flavor/ <- フレーバー置場
    + ./kernel/ <- 共通処理置場
    + ./bin/ <- ユーティリティ
  }
}
```

### プロセス

```plantuml
start
partition kernel/initialize.vim {
  :環境判定;
  :必要な一時ディレクトリを作成;
  partition config/default.vim {
    :プラグインに依存しない基本設定;
  }
}
partition kernel/plugins.vim {
  :dein初期処理をおこなう;
  partition コンテクストの数だけ繰り返す {
    :コンテクスト名.vimを読み込む|
  }
  :設定されたflavor名.vimを読み込む|
  :dein終了処理をおこなう;
}
end
```

## コンテキスト設計

### Context: minimal

コンセプト:
    最小限の設定で立ち上げる

```plantuml
[minimal.vim] - [fzf <<ファイラー>>]
```

### Context: full

フルパッケージ

## フレーバ設計

### Flavor: default

デフォルトだと思うキーマップ設定

### Flavor: hajimemat

`Flavor: default`にカラースキーマ`nanotech/jellybeans.vim`を追加

## 課題

* `set nocompatible`がneovimdだと警告がでる

