#NeoVim config

## Ja

## 構造
nvim/
  init.lua
  lua/
    core/
      options.lua
      keymaps.lua
      autocmds.lua

### options.lua
Neovim本体の基本動作を設定するファイル。
現在地の把握、空白・タブの可視化、検索、インデント、分割方向など、プラグインに依存しない
土台の設定を管理する。

### keymaps.lua
基本操作のキーマップを管理するファイル。
leader key、Insert mode からの脱出、ウィンドウ分割、分割ウィンドウ間の移動など、日常的に使う
操作を定義する。

#### キーの設定
## Keymaps

`keymaps.lua` では、Neovim の基本操作に関するキーマップを定義している。

### Leader key

| キー | 意味 |
|---|---|
| `Space` | leader key |
| `Space` | local leader key |

この設定では、`<leader>` を Space に設定している。
そのため、`<leader>sv` は `Space → s → v` の順に入力する。

### Insert mode

| キー | 動作 | 説明 |
|---|---|---|
| `kj` | `<Esc>` | Insert mode から Normal mode に戻る |
| `Kj` | `<Esc>` | Shift が混ざった場合でも Normal mode に戻る |
| `kJ` | `<Esc>` | Shift が混ざった場合でも Normal mode に戻る |
| `KJ` | `<Esc>` | Shift が混ざった場合でも Normal mode に戻る |

Esc キーが遠いため、`kj` 系の入力で Insert mode から抜けられるようにしている。

### Window split

| キー | 動作 | 説明 |
|---|---|---|
| `Space s v` | `:vsplit` | ウィンドウを左右に分割する |
| `Space s h` | `:split` | ウィンドウを上下に分割する |

`vsplit` は vertical split のため、画面を左右に分割する。
`split` は horizontal split のため、画面を上下に分割する。

### Window navigation

| キー | 動作 | 説明 |
|---|---|---|
| `←` | `<C-w>h` | 左のウィンドウへ移動 |
| `↓` | `<C-w>j` | 下のウィンドウへ移動 |
| `↑` | `<C-w>k` | 上のウィンドウへ移動 |
| `→` | `<C-w>l` | 右のウィンドウへ移動 |

Normal mode では、矢印キーを通常のカーソル移動ではなく、分割ウィンドウ間の移動に使う。
通常のカーソル移動は Vim 標準の `h/j/k/l` を使う。

### autocmds.lua
特定のイベント発生時に自動実行する処理を管理するファイル。
現在は、yank範囲のハイライト、保存時の行末空白削除、前回カーソル位置の復元を設定している。

## En


