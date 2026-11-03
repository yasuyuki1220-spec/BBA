# CrazyGames 投稿用メモ

## 基本情報
- タイトル: TOWN SMASHERS
- ジャンル: Action / Battle Royale / Party（.io 系の乱闘）
- 対応: PC（キーボード・ゲームパッド）、スマホ・タブレット（タッチ）
- 向き: 縦・横どちらでも遊べる
- 言語: 英語が標準。日本語のブラウザでは自動で日本語になり、タイトル右上のボタンで切り替えられる（URL に `?lang=en` / `?lang=ja` でも指定可）
- 最初の3試合は画面下に操作の案内（動く → 拾う → 攻撃 → 必殺）が出る
- オンライン: 合言葉（5けたの数字）で最大15人。CrazyGames 上では「友だちを招待」ボタンと招待リンクに対応
- 投稿ファイル: `./build.sh` で作る `dist/town-smashers.zip`（three.js と PeerJS を同梱）

## 説明文（English）
**Short:** A chaotic 15-player brawl in a supermarket, a school, a park and an arcade — fight with whatever is on the shelves!

**Long:**
Grab a giant radish, throw pepper to make everyone sneeze, sweep rivals away with a broom, or launch them with a plush toy! In TOWN SMASHERS up to 15 fighters battle in everyday places using whatever they can find.

- 15 unique fighters: Grandpa, Granny, Salaryman, Career Woman, Monkey, Dog, Alien, Zombie, Dinosaur, Panda, Sumo Wrestler, Penguin, Robot, Ghost and Kindergartner — each with their own moves
- Grab the rare golden item to unleash a character-specific super move: one-hit golden paper fan, giant pickle stone, disco mirror ball, laser sword, homing missiles and more
- 4 stages with live gimmicks: a cleaning robot and time sales at the supermarket, a patrolling teacher at school, sprinklers in the park and a giant claw machine in the arcade
- Zombie bites spread the infection!
- Play solo against CPUs, or create a room and invite friends with a 5-digit code
- Earn cosmetic footprint trails by playing (they never make you stronger)

**Controls:**
- Keyboard: WASD / Arrow keys move · J attack · K pick up / throw · L or Shift dodge · P menu
- Gamepad: Left stick move · A attack · X pick up / throw · B dodge · Start menu
- Touch: Left stick move · Attack / Pick up / Dodge buttons

## 説明文（日本語）
**短い説明:** スーパー・学校・公園・ゲームセンターで最大15人が大乱闘。棚にある物で戦え！

**長い説明:**
大根でぶん殴り、こしょうでくしゃみ地獄、ほうきで掃き飛ばし、巨大ぬいぐるみで吹っ飛ばせ！ TOWN SMASHERS は、身近な場所で最大15人が、その場にある物を使って戦う大乱闘ゲームです。

- ジジイ、ババア、サラリーマン、キャリアウーマン、サル、犬、宇宙人、ゾンビ、恐竜、パンダ、力士、ペンギン、ロボット、おばけ、園児の15キャラ。それぞれ能力が違う
- ときどき落ちてくる金色の「必殺アイテム」で、キャラ専用の必殺技（一撃KOのゴールドハリセン、巨大漬物石、ミラーボール、ビームソード、ミサイル乱射など）
- 4ステージそれぞれにギミック（お掃除ロボとタイムセール、見回りの先生、スプリンクラー、巨大クレーン）
- ゾンビにかまれるとゾンビ化が広がる
- CPU戦のほか、5けたの合言葉で友だちと部屋対戦
- 遊ぶと「足あとエフェクト」（見た目だけ）が増えていく

## タグ案
brawl, battle royale, party, multiplayer, 3d, funny, zombie, dinosaur, mobile, io

## 画像
- `thumb_1920x1080.png`（横長）
- `thumb_1080x1920.png`（縦長）
- `thumb_1024x1024.png`（正方形）

CrazyGames が求める画像サイズは投稿画面の指示を確認して、合わなければ作り直す（この環境からは公式ドキュメントを読めなかったため）。

## 広告・課金
- 試合が終わってボタンを押したときに midgame 広告（CrazyGames 側の間隔制限に従う）
- 準備画面の「▶ 広告を見て1つもらう」で rewarded 広告。見ると、見た目だけの足あとエフェクトが1つ解放される（強さは変わらない）
- 課金アイテムなし（CrazyGames の課金は招待制のため）

## 投稿前のチェック
- [ ] CrazyGames の開発者ポータルの「Preview」で、広告・招待ボタン・音のミュート設定が動くか
- [ ] オンライン対戦は PeerJS の公開サーバー（0.peerjs.com）につなぐ。CrazyGames の審査で外部サーバーへの接続が問題にならないか確認する
- [ ] スマホ実機で15人対戦の重さ
- [ ] 説明文・タグ・画像の登録
