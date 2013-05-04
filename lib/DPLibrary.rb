require 'DPLibrary/version'

module DPLibrary
  autoload :Configuration, 'DPLibrary/configuration'
  autoload :Connection, 'DPLibrary/connection'
  autoload :Request, 'DPLibrary/request'

  autoload :Base, 'DPLibrary/base'
  autoload :Item, 'DPLibrary/item'
  autoload :Collection, 'DPLibrary/collection'

  class << self
    attr_accessor :api_key
  end
end
