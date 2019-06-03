require 'resolv'
class Address < ApplicationRecord
  validates :dns, presence: true
  validates_format_of :dns, with: Resolv::IPv4::Regex
end
