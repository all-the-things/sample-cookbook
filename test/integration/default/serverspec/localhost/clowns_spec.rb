require 'spec_helper'

describe 'clowns site' do
  it 'responds on port 80' do
    expect(port 80).to be_listening 'tcp'
  end

  it 'returns clowns in the HTML body' do
    expect((command 'curl localhost:80').stdout).to match(/clowns/)
  end
end
