# homebrew-doteRamen

`doteRame` は、ターミナル上に16x16のドット絵アニメーションを表示する小さなコマンドです。

ANSIエスケープシーケンスと256色の背景色を使って、色付きのドット絵を左右に動かします。

## インストール

Homebrewでインストールできます。

```sh
brew tap ChiOtter/doteRamen
brew install dote-rame
```

## 使い方

インストール後、次のコマンドを実行します。

```sh
doteRame
```

実行すると、ターミナル画面にドット絵アニメーションが表示されます。

## 手元でビルドする

```sh
cc doteRame.c -o doteRame
./doteRame
```

## ファイル構成

- `doteRame.c`: `doteRame` コマンド本体のCソースコード
- `dote-rame.rb`: Homebrew Formula

## Homebrew Formulaについて

`dote-rame.rb` は、GitHub上の `doteRame.c` を取得し、システムのCコンパイラで `doteRame` バイナリを生成して `bin` にインストールします。

Formulaの概要:

```ruby
class DoteRame < Formula
  desc "Animated dot-art ramen command"
  homepage "https://github.com/ChiOtter/homebrew-doteRamen"
  url "https://raw.githubusercontent.com/ChiOtter/homebrew-doteRamen/main/doteRame.c"
  version "1.0.0"
end
```

実際のFormulaでは、`sha256` と `install` 処理も定義されています。

## 動作要件

- ANSIエスケープシーケンスに対応したターミナル
- 256色表示に対応したターミナル
- 手元でビルドする場合は `cc` や `clang` などのCコンパイラ
- Homebrewでインストールする場合はHomebrew
