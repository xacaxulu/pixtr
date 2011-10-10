require 'spec_helper'

describe Post do
  it { should allow_value("Breaking News").for(:title) }
  it { should allow_value("It's Cold!").for(:body) }
  it { should validate_presence_of(:title) }
end