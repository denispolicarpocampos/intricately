require "rails_helper"

RSpec.describe Address, :type => :model do

  it { should validate_presence_of(:dns) }

  it "valid with ipv4" do
    should allow_value(FFaker::Internet.ip_v4_address).for(:dns)
  end

  it "invalid with ipv6" do
    should_not allow_value(IPAddr.new(rand(2**128),Socket::AF_INET6)).for(:dns)
  end

  it "invalid with numbers" do
    should_not allow_value(rand(0..1000)).for(:dns)
  end

  it "invalid with strings" do
    should_not allow_value(FFaker::Lorem.word).for(:dns)
  end
end