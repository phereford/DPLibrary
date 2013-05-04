require 'DPLibrary'
require 'rspec'
require 'vcr'

VCR.configure do |config|
  config.configure_rspec_metadata!
  config.cassette_library_dir = 'spec/cassettes'
  config.hook_into :faraday
  config.default_cassette_options = { :record => :new_episodes, :erb => true }
end

RSpec.configure do |config|
  config.mock_with :rspec
end
