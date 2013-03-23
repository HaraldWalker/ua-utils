require 'ua-utils/user_agent'
require 'ua-utils/operating_system'

module UaUtils

  VERSION = '0.3.3'

  def self.logger
    @logger ||= (rails_logger || default_logger)
  end

  def self.default_logger
    require 'logger'
    l = Logger.new(STDOUT)
    l.level = Logger::INFO
    l
  end

  def self.logger=(logger)
    @logger = logger
  end

end