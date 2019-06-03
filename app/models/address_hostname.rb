class AddressHostname < ApplicationRecord
  belongs_to :hostname
  belongs_to :address
end
