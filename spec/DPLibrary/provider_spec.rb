require 'spec_helper'
require 'yaml'

describe DPLibrary::Provider do
  subject { DPLibrary::Provider.new( YAML.load_file( './spec/fixtures/provider.yml' ) ) }

  context 'initialize' do
    its(:name) { should eql 'Biodiversity Heritage Library' }
    its(:id) { should eql 'http://dp.la/api/contributor/bhl' }
  end
end
