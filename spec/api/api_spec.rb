require 'spec_helper'

describe ExampleAPI, type: :request  do
  context "when using version 2" do
    before { get '/api/posts/1.json', nil, {'Accept' => 'application/vnd.example-v2+json' } }
    subject { response }
    it { should be_success }
    its(:body) { should == "Version two!" }
  end

  context "when using version 1" do
    before { get '/api/posts/1.json', nil, {'Accept' => 'application/vnd.example-v1+json' } }
    subject { response }
    it { should be_success }
    its(:body) { should == "Version one!" }
  end
end
