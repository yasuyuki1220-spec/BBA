# 忍び足ババア 公開手順（CrazyGames）

## 広告の出るタイミング
- ステージ（章）クリア後、次へ／タイトルへ のボタンを押したとき
- ゲームオーバー（作戦失敗）後、再挑戦／タイトルへ のボタンを押したとき

## 広告の自動切り替え（`AD_CONFIG.provider:'auto'`）
| 公開場所 | 動き |
|---|---|
| CrazyGames 上（ホスト名に crazygames を含む、または URL に `?cg=1`） | CrazyGames SDK v3 の midgame 広告。プレイ中は `gameplayStart/Stop` を送る |
| GitHub Pages（`*.github.io`） | 広告なし |
| それ以外（claude.ai のアーティファクトなど） | テスト用の広告枠 |

## 投稿用 zip の作り方
```
./build.sh   # → dist/shinobiashi-babaa.zip（three.js 同梱）
```

## 投稿の流れ
1. CrazyGames Developer Portal（developer.crazygames.com）でアカウントを作る
2. 「Submit game」から `shinobiashi-babaa.zip` をアップロードする（形式は HTML5）
3. タイトル・説明文・サムネイル画像・操作方法を入力する（英語の説明も用意するとよい）
4. Preview で「?cg=1」なしでも CrazyGames 上なら広告が呼ばれることを確認する
5. 審査を待つ

## 注意
- フォントは Google Fonts から読み込んでいるので、オフラインだとシステムフォントになる
- 進行状況はブラウザの localStorage に保存される
