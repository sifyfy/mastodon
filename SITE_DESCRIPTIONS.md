# site-description

theboss.tech は Mastodon インスタンスの一つです。

どなたでもお気軽にご利用ください。通常の用途だけでなく、 ID 確保・サブアカ置き場・Bot 置き場・API テストなどにもどうぞ。

since 2017/9/2

# site-description-extended

[@the_boss](https://theboss.tech/@the_boss) の個人インスタンスですが、試験的にアカウント登録を開放しています。お気軽にご利用ください。

## インスタンスの特徴

- [読み仮名を振ることができます。](https://theboss.github.io/blog/2017/11/23/only-luckybeast-emoji/)
- [トゥート時に奈落文字へ変換する機能と、タイムラインの奈落文字を解読する機能があります。](https://theboss.github.io/blog/2017/11/09/naraku-moji-instance/) **ただし、現在は shortcode で表示され、奈落文字に見えません。**
- [アカウントをもっていれば、どなたでもカスタム絵文字を登録することができます。](https://theboss.github.io/blog/2017/10/29/user-customemojis/) **ただし、登録直後は無効の状態となり、管理者が有効化するまでは使用できません。**
- その他細かい変更
  - インスタンスのトップページでローカル/連合 TL を切り替え可能に
    - [mstdn.maud.io のカスタマイズ](https://github.com/lindwurm/mastodon/blob/hota/master/app/javascript/mastodon/features/standalone/public_timeline/index.js) を cherry-pick させていただきました
  - [モバイル表示時にスワイプによるタイムライン切り替えを無効化](https://github.com/theboss/mastodon/commit/4746edbd997a2c86bf2068e271692f81eb68607a)

以下の機能はかつて存在していましたが、今は使用できません。

- [他インスタンスから受信したカスタム絵文字を全て使えるように取り込んでいます。](https://theboss.github.io/blog/2017/10/22/%E3%83%AA%E3%83%A2%E3%83%BC%E3%83%88%E3%81%AE%E3%82%AB%E3%82%B9%E3%82%BF%E3%83%A0%E7%B5%B5%E6%96%87%E5%AD%97%E5%85%A8%E9%83%A8%E3%82%B3%E3%83%94%E3%83%BC%E3%81%99%E3%82%8Brake-task%E3%82%92%E4%BD%9C%E3%81%A3%E3%81%9F/)
  - 2 時間おきに更新

## インスタンス利用ルール

(規約)[/terms] をご確認ください。

## サーバー情報

- App, DB server: さくらのクラウド
- Media storage: AWS S3

# site-terms 

- 日本国内法遵守
- CW/NSFW は各自ご判断を
- Bot 作成ルール遵守 (後述)

ルールは予告なく変更する場合があります。 (2017/12/05 改定、[履歴](https://github.com/theboss/mastodon/commits/theboss.tech/SITE_DESCRIPTIONS.md))

## Bot 作成ルール

- リプライを自動で送る場合、対象を Bot のフォロワーおよびローカルユーザーのみに絞ってください。
- 過度な連投や多量の投稿を自動で行う場合、公開範囲を絞ってください。
  - unlisted, private, direct の使用をご検討ください。迷惑にならない範囲ならば Bot に public 投稿をさせても OK です。
- 自動で他のアカウントを能動的にフォローしないでください。
  - 自動フォローバックは OK です。なお手動で Bot からフォローするのは、必要最低限ならば OK です。
