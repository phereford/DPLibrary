require 'spec_helper'

describe DPLibrary::DocumentCollection do
  subject do
    DPLibrary.stub(:api_key).and_return('bb9ec047f463cd046c8a26c4237a3349')
    DPLibrary::DocumentCollection.new({q: 'chicken'})
  end

  context '.new', :vcr do
    it { should_not be nil }
  end

  context '#set_method' do
    its(:count) { should be_kind_of(Integer) }
  end
end
