require 'logging'

module SpeedUp
  def self.logger
    @logger ||= SpeedUp.get_logger
  end

  def self.get_logger
    logger = Logging.logger(STDOUT)
    logger_level = ENV["LOGGER_LEVEL"] ? ENV["LOGGER_LEVEL"].to_sym : :error
    logger.level = logger_level
    logger
  end
end

