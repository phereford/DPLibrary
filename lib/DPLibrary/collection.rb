module DPLibrary
  class Collection
    attr_accessor :collection_items

    def initialize(collection_response)
      set_values(collection_response)
    end

    def set_values(collection_response)
      @collection_items = []
      if (collection_response.is_a?(Array))
        @collection_items = collection_response.map {|h| create_collection_item(h)}
      else
        @collection_items << CollectionItem.new(collection_response)
      end
      @collection_items
    end

    def create_collection_item(collection_item_hash)
      CollectionItem.new(collection_item_hash)
    end
  end
end
