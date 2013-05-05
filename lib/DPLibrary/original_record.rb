module DPLibrary
  class OriginalRecord
    attr_accessor :id,
                  :title,
                  :url,
                  :description,
                  :source,
                  :subject,
                  :date,
                  :label,
                  :language,
                  :type,
                  :creator,
                  :publisher

    def initialize(hash)
      set_values(hash)
    end

    def set_values(hash)
      self.id = hash['id']
      self.title = hash['title']
      self.url = hash['handle']
      self.source = hash['contributor']
      self.description = hash['description']
      self.subject = hash['subject']
      self.date = hash['datestamp']
      self.label = hash['label']
      self.language = hash['language']
      self.type = hash['type']
      self.creator = hash['creator']
      self.publisher = hash['publisher']
    end
  end
end
