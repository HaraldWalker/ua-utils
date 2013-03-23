module UaUtils
  class UserAgent

    attr_reader :os

    # @param [Object] user_agent_string
    def initialize(user_agent_string)
      @user_agent_string = user_agent_string
    end

    def os
      @os ||= UaUtils::OperatingSystem.new(@user_agent_string)
    end

  end

end