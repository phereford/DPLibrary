require 'spec_helper'

describe DPLibrary::Document do
  subject { DPLibrary::Document.new( YAML.load_file( './spec/fixtures/document.yml' ) ) }

  context 'initialize' do
    its(:id) { should eql '8ce4474d8b1eefffaa5ce4ce34369c43' }
    its(:url) { should eql 'http://www.biodiversitylibrary.org/item/79580' }
    its(:source) { should eql 'Library of Congress' }
    its(:title) { should eql 'The chicken cholera preventive and exterminator, a treatise giving the cause, symptoms, prevention, and extermination of chicken cholera' }
    its(:description) { should eql 'Test' }
    its(:subject) { should eql [{'name'=>"Chicken cholera"}] }
    its(:language) { should eql [{'iso639_3'=>'eng', 'name'=>'English'}] }
    its(:format) { should eql 'Book' }
    its(:type) { should eql 'text' }
    its(:publisher) { should eql 'Wooster [Ohio]Republican steam press print,1875' }
    its(:creator) { should eql 'Hill, A. J' }
    its(:provider) { should be_kind_of DPLibrary::Provider }
    its(:collection) { should be_kind_of DPLibrary::Collection }
    its(:original_record) { should be_kind_of DPLibrary::OriginalRecord }
    its(:score) { should eql 1.9722701 }
  end
end
