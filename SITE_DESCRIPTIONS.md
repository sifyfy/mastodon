# site-description

theboss.tech は Mastodon インスタンスの一つです。

どなたでもお気軽にご利用ください。通常の用途だけでなく、 ID 確保・サブアカ置き場・Bot 置き場・API テストなどにもどうぞ。

since 2017/9/2

# site-description-extended

[@the_boss](https://theboss.tech/@the_boss) の個人インスタンスですが、試験的にアカウント登録を開放しています。お気軽にご利用ください。

## インスタンスの特徴

- 他インスタンスから受信したカスタム絵文字を全て使えるように取り込んでいます。
  - 2 時間おきに更新
  - 詳細: [リモートのカスタム絵文字全部コピーするrake taskを作った](https://theboss.github.io/blog/2017/10/22/%E3%83%AA%E3%83%A2%E3%83%BC%E3%83%88%E3%81%AE%E3%82%AB%E3%82%B9%E3%82%BF%E3%83%A0%E7%B5%B5%E6%96%87%E5%AD%97%E5%85%A8%E9%83%A8%E3%82%B3%E3%83%94%E3%83%BC%E3%81%99%E3%82%8Brake-task%E3%82%92%E4%BD%9C%E3%81%A3%E3%81%9F/)
- その他細かい変更
  - インスタンスのトップページでローカル/連合 TL を切り替え可能に
    - [mstdn.maud.io のカスタマイズ](https://github.com/lindwurm/mastodon/blob/hota/master/app/javascript/mastodon/features/standalone/public_timeline/index.js) を cherry-pick させていただきました
  - [フォローボタン位置変更](https://github.com/theboss/mastodon/commit/6cb292f760a1e7c73a79941395521482472da50b)
    - 誤操作を防ぐため右上へ

## インスタンス利用ルール

- 日本国内法遵守
- CW/NSFW は各自ご判断を
- Bot 作成ルール遵守 (後述)

ルールは予告なく変更する場合があります。 (2017/10/25 制定、[履歴](https://github.com/theboss/mastodon/commits/theboss.tech/SITE_DESCRIPTIONS.md))

## Bot 作成ルール

- リプライを自動で送る場合、対象を Bot のフォロワーのみに絞ってください。
- 過度な連投や多量の投稿を自動で行う場合、公開範囲を絞ってください。
  - unlisted, private, direct の使用をご検討ください。迷惑にならない範囲ならば Bot に public 投稿をさせても OK です。
- 自動で他のアカウントを能動的にフォローしないでください。
  - 自動フォローバックは OK です。なお手動で Bot からフォローするのは、必要最低限ならば OK です。

## サーバー情報

- App, DB server: さくらのクラウド
- Media storage: AWS S3
