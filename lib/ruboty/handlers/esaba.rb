module Ruboty
  module Handlers
    class Esaba < Base
      on(
        /.*esa\.io\/posts\/(?<id>\d+)/im,
        name: 'esaba',
        description: 'return esaba URL',
        all: true
      )

      def esaba(message)
        if room(message.from) =~ room_filter
          message.reply '──=≡=͟͟͞͞(\( ⁰⊖⁰)/) )  ' + ENV['ESABA_URL_PREFIX'] + message[:id]
        end
      end

      private

      def room_filter
        Regexp.new ENV['ESABA_ROOM_FILTER']
      end

      def room(from)
        channels.find { |channel| channel['id'] == from }['name']
      end

      def channels
        @channels ||= JSON.parse(open(api_channels_list).read)['channels']
      end

      def api_channels_list
        "https://slack.com/api/channels.list?token=#{ENV['RUBOTY_ESABA_SLACK_TOKEN']}"
      end
    end
  end
end
