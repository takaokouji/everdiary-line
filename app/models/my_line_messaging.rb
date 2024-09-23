class MyLineMessaging
  class << self
    def push_text_message(uid:, text:)
      new.push_text_message(uid:, message: { type: "text", text: })
    end
  end

  def push_text_message(uid:, message:)
    line_bot_client.push_message(uid, message)
  end

  private

  def line_bot_client
    @line_bot_client ||= Line::Bot::Client.new { |config|
      config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
      config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
    }
  end
end
