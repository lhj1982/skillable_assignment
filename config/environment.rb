# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
SkillableAssignment::Application.initialize!

Rails.logger = Logger.new(STDOUT)
#Rails.logger = Log4r::Logger.new("Application Log")

#config.log_level = :warn # In any environment initializer, or
Rails.logger.level = 0