require "rails_helper"

RSpec.describe AddressHostname, :type => :model do
  it { should validate_presence_of(:address_id) }
  it { should validate_presence_of(:hotstname_id) }
end