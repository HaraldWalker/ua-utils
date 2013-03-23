module UaUtils

  class OperatingSystem

    # platform, e.g. 'Windows'
    # name, e.g. 'Windows 8'
    # version, e.g. '8.0.1'
    # device, e.g. :desktop

    attr_reader :platform, :device

    def initialize(user_agent_string)
      @platform, @device = detect_device(user_agent_string)
    end

    def to_s
      @platform.to_s
    end

    def mobile?
      @device == :mobile
    end

    def tablet?
      @device == :tablet
    end

    def desktop?
      @device == :desktop
    end

    def webtv?
      @device == :webtv
    end

    private

      def detect_device(ua_string)
        case ua_string
          when /(windows nt).*(touch)/i                         ; return :windows, :tablet
          when /windows nt/i                                    ; return :windows, :desktop
          when /ipad/i                                          ; return :ios, :tablet
          when /iphone/i                                        ; return :ios, :mobile
          when /mac os x/i                                      ; return :macosx, :desktop #after ios
          when /android(?!.*kindle).*(mobile safari)/i          ; return :android, :mobile
          when /(android).*(safari)/i                           ; return :android, :tablet #after mobile android
          when /windows phone/i                                 ; return :windows_phone, :mobile
          when /bada/i                                          ; return :bada, :mobile
          when /meego/i                                         ; return :meego, :mobile
          when /symbian|s60/i                                   ; return :symbian, :mobile
          when /googletv/i                                      ; return :android, :tv
          when /bot/i                                           ; return :unknown, :bot
          else                                                  ; return :unknown, :unknown
        end
      end

  end

end