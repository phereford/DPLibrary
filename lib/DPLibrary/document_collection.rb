module DPLibrary
  class DocumentCollection < Base
    attr_accessor :count,
                  :offset,
                  :limit,
                  :documents

    def initialize(parameters)
      json_response = find(parameters)

      response_values = super(json_response)

      set_method(response_values)
    end

    private
    def find(parameters)
      get('items', parameters)
    end

    def set_method(values)
      self.count = values['count']
      self.offset = values['start']
      self.limit = values['limit']

      self.documents = create_documents(values['docs'])
    end

    def create_documents(document_array)
      documents = []

      document_array.each do |document|
        documents << Document.new(document)
      end

      documents
    end
  end
end
