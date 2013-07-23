module DPLibrary
  class CollectionItem
    attr_accessor :id,
                  :title,
                  :name

    def initialize(collection_hash)
      set_values(collection_hash)
    end

    def set_values(collection_hash)
      self.id = collection_hash['id']
      self.title = collection_hash['title']
      self.name = collection_hash['name']
    end
  end
end
