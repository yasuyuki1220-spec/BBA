# ババアソリッド 公開手順

## 広告の出るタイミング
- ステージ（章）クリア後、次へ／タイトルへ のボタンを押したとき
- ゲームオーバー（作戦失敗）後、再挑戦／タイトルへ のボタンを押したとき

## 広告の切り替え（index.html 内の `AD_CONFIG`）
```js
var AD_CONFIG={provider:'house', adsenseClient:'', adsenseTest:true};
```
| provider | 内容 |
|---|---|
| `house` | テスト用の広告枠（3秒後に閉じられる）。今の設定 |
| `adsense` | Google AdSense の H5 ゲーム広告（`adBreak`）。`adsenseClient` に `ca-pub-...` を入れる。本番では `adsenseTest:false` |
| `crazygames` | CrazyGames に投稿する場合（CrazyGames SDK v3） |
| `none` | 広告なし |

## A. 自分のサイトで公開（GitHub Pages + AdSense）
1. GitHub のリポジトリ → Settings → Pages → Source を「GitHub Actions」にする
2. master に push すると `https://yasuyuki1220-spec.github.io/BBA/` に公開される
3. AdSense は `github.io` のサブドメインでは審査が通らないので、独自ドメインを取得して Pages の Custom domain に設定する
4. AdSense の審査に通り、H5 ゲーム広告（Ad placement API）が使えるようになったら、`provider:'adsense'` とパブリッシャーIDを設定し、ルートに `ads.txt` を置く

## B. ゲームサイトに投稿（CrazyGames など）
- `provider:'crazygames'` にして、CrazyGames Developer Portal から投稿する。広告の配信と収益の分配はサイト側が行う
- 投稿先の規約（ほかの広告ネットワークの併用禁止など）を確認すること
