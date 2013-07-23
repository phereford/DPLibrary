require 'DPLibrary/version'

module DPLibrary
  autoload :Configuration, 'DPLibrary/configuration'
  autoload :Connection, 'DPLibrary/connection'
  autoload :Request, 'DPLibrary/request'

  autoload :Base, 'DPLibrary/base'
  autoload :DocumentCollection, 'DPLibrary/document_collection'
  autoload :Collection, 'DPLibrary/collection'
  autoload :CollectionItem, 'DPLibrary/collection_item'
  autoload :Document, 'DPLibrary/document'
  autoload :Provider, 'DPLibrary/provider'
  autoload :OriginalRecord, 'DPLibrary/original_record'

  class << self
    attr_accessor :api_key
  end
end
