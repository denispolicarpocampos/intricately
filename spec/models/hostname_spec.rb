require "rails_helper"

RSpec.describe Hostname, :type => :model do

  it { should validate_presence_of(:name) }

  it "valid with domain name" do
    should allow_value(FFaker::Internet.domain_name	).for(:name)
  end

  it "invalid for any name other than a domain" do
    should_not allow_value(IPAddr.new(rand(2**128),Socket::AF_INET6)).for(:dns)
  end
end