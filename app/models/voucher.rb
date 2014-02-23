class Voucher < ActiveRecord::Base
  attr_accessible :code, :redeemed, :value

  VALID_CODE_REGEX = /^[a-zA-Z\d*\-*]{1,8}$/
  VALID_VALUE_REGEX = /^(\d{1,6})(\.|,)?(\d{1,2})?$/

  validates :code,  presence: true, length: { maximum: 8 },
                    format: { with: VALID_CODE_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :value, presence: true, format: { with: VALID_VALUE_REGEX },
                    numericality: true
end
