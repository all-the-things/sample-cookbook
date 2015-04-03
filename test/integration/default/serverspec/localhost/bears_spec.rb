require 'spec_helper'

describe 'bears site' do
  it 'responds on port 81' do
    expect(port 81).to be_listening 'tcp'
  end

  it 'returns bears in the HTML body' do
    expect((command 'curl localhost:81').stdout).to match(/bears/)
  end
end
