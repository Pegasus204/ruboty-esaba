# ruboty-esaba

Slackでesa記事のURLを貼るとesabaのURLに置換してくれるRubotyプラグインです。

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruboty-esaba'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruboty-esaba

## Usage

RubotyのGemfileに追加して、下記の環境変数を設定してください。

## ENV

* ESABA_URL_PREFIX: esaba URLのid以前の部分 ( `https://xxx.esaba.io/posts/` )
* RUBOTY_ESABA_SLACK_TOKEN: slackチャンネル名取得用のAPIトークン
* ESABA_ROOM_FILTER(option): URLの置き換えを行うSlackチャンネルをフィルタするための文言 ( `general` )

## Development

After checking out the repo, run `bin/setup` to install dependencies.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Pegasus204/ruboty-esaba.
