module UaUtils

  # The user agent object.
  #
  # === Example
  #
  #   user_agent = UaUtils::UserAgent.new(
  #     'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-us) AppleWebKit/533.19.4 (KHTML, like Gecko) Version/5.0.3 Safari/533.19.4')
  #
  #   if user_agent.os.tablet?
  #    (... do something for tablet devices ...)
  #   end
  #
  #   if user_agent.os.platform == :ios
  #     render "/ios/show"
  #   end
  #
  class UserAgent

    attr_reader :os

    # Initializes a user agent for parsing with a given user agent string
    # @param [Object] user_agent_string
    def initialize(user_agent_string)
      @user_agent_string = user_agent_string
    end

    # Returns operating system of the user agent.
    # @return [UaUtils::OperatingSystem] the detected operating system of the user agent string
    def os
      @os ||= UaUtils::OperatingSystem.new(@user_agent_string) # operating system
    end

  end

end