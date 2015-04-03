require 'spec_helper'

describe 'server' do
  it 'has apache installed' do
    expect(package 'httpd').to be_installed
  end
end
