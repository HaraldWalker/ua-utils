# frozen_string_literal: true

module UaUtils
  # The operating system that can be detected based on the user agent string.
  #
  # === Example
  #
  #   os = UaUtils::OperatingSystem.new(
  #     'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5; en-us) AppleWebKit/533.19.4 (KHTML, like Gecko) Version/5.0.3 Safari/533.19.4')
  #
  #   if os.tablet?
  #    (... do something for tablet devices ...)
  #   end
  #
  #   if os.platform == :ios
  #     render "/ios/show"
  #   end

  class OperatingSystem
    attr_reader :platform, :device

    # Initializes operating system for parsing with the given user agent string.
    def initialize(user_agent_string)
      @platform, @device = detect_device(user_agent_string)
    end

    # Returns string representation of the operating system.
    # @return [String]
    def to_s
      @platform.to_s
    end

    # Returns true if the operating system is a mobile device.
    # @return [Boolean]
    def mobile?
      @device == :mobile
    end

    # Returns true if the operating system is a tablet device.
    # @return [Boolean]
    def tablet?
      @device == :tablet
    end

    # Returns true if the operating system is a desktop device.
    # @return [Boolean]
    def desktop?
      @device == :desktop
    end

    # Returns true if the operating system is a webTV device.
    # @return [Boolean]
    def webtv?
      @device == :webtv
    end

    private

    def detect_device(ua_string) #:nodoc:
      case ua_string
      when /(windows nt).*(touch)/i then %i[windows tablet]
      when /windows nt/i then %i[windows desktop]
      when /ipad/i then %i[ios tablet]
      when /iphone/i then %i[ios mobile]
      when /mac os x/i then %i[macosx desktop] # after ios
      when /android(?!.*kindle).*(mobile safari)/i then %i[android mobile]
      when /(android).*(safari)/i then %i[android tablet] # after mobile android
      when /windows phone/i then %i[windows_phone mobile]
      when /bada/i then %i[bada mobile]
      when /meego/i then %i[meego mobile]
      when /symbian|s60/i then %i[symbian mobile]
      when /googletv/i then %i[android tv]
      when /bot/i then %i[unknown bot]
      else; %i[unknown unknown]
      end
    end
  end
end
