require 'spec_helper'

describe DPLibrary::DocumentCollection do
  let (:base_response_json) do
    { 'count' => 0, 'start' => 1, 'limit' => 1, 'docs' => [] }
  end
  let (:response_body) { JSON.dump(base_response_json) }

  describe '#initialize' do

    context 'with a string :id parameter' do
      it 'results in a request for items/<id>' do
        expect_any_instance_of(described_class)
          .to receive(:get)
          .with('items/1abc', {})
          .and_return(response_body)
        dc = described_class.new(id: '1abc')
      end
    end

    context 'with an array :id parameter' do
      it 'results in a request for items/<id>,<id>' do
        expect_any_instance_of(described_class)
          .to receive(:get)
          .with('items/1abc,2def', {})
          .and_return(response_body)
        dc = described_class.new(id: ['1abc', '2def'])
      end
    end

    context 'with no :id parameter' do
      it 'results in a request for "items" with querystring params' do
        expect_any_instance_of(described_class)
          .to receive(:get)
          .with('items', {:'sourceResource.title' => 'ducks'})
          .and_return(response_body)
        dc = described_class.new(:'sourceResource.title' => 'ducks')
      end
    end
  end
end
