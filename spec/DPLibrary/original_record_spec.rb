require 'spec_helper'

describe DPLibrary::OriginalRecord do
  subject { DPLibrary::OriginalRecord.new( YAML.load_file( './spec/fixtures/original_record.yml' ) ) }

  context 'initialize' do
    its(:id) { should eql 'oai:biodiversitylibrary.org:item/79580' }
    its(:title) { should eql 'The chicken cholera preventive and exterminator, a treatise giving the cause, symptoms, prevention, and extermination of chicken cholera;' }
    its(:url) { should eql 'http://www.biodiversitylibrary.org/item/79580' }
    its(:description) { should eql 'Test' }
    its(:source) { should eql 'Library of Congress' }
    its(:date) { should eql '2012-06-22T02:33:26Z' }
    its(:label) { should eql 'The chicken cholera preventive and exterminator, a treatise giving the cause, symptoms, prevention, and extermination of chicken cholera;' }
    its(:language) { should eql 'English' }
    its(:type) { should eql ['text', 'Book'] }
    its(:creator) { should eql 'Hill, A. J.' }
    its(:publisher) { should eql 'Wooster [Ohio]Republican steam press print,1875.' }
  end
end
