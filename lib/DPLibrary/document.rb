module DPLibrary
  class Document
      attr_accessor :id,
                    :url,
                    :source,
                    :title,
                    :description,
                    :subject,
                    :language,
                    :format,
                    :type,
                    :publisher,
                    :creator,
                    :provider,
                    :collection,
                    :original_record,
                    :score

    def initialize(response_hash={})
      set_values(response_hash)
    end

    private
    def set_values(hash={})
      self.id = hash['id']
      self.url = hash['isShownAt']
      self.source = hash['dataProvider']
      self.title = hash['sourceResource']['title']
      self.description = hash['sourceResource']['description']
      self.subject = hash['sourceResource']['subject']
      self.language = hash['sourceResource']['language']
      self.format = hash['sourceResource']['format']
      self.type = hash['sourceResource']['type']
      self.publisher = hash['sourceResource']['publisher']
      self.creator = hash['sourceResource']['creator']
      self.score = hash['score']

      self.provider = create_provider(hash['provider'])
      self.original_record = create_original_record(hash['originalRecord'])
      self.collection = create_collection(hash['sourceResource']['collection'])
    end

    def create_provider(provider_hash)
      Provider.new(provider_hash)
    end

    def create_original_record(original_record_hash)
      OriginalRecord.new(original_record_hash)
    end

    def create_collection(collection_response)
      collection_response.nil? ? nil : Collection.new(collection_response)
    end
  end
end
