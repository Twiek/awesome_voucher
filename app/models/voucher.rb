class Voucher < ActiveRecord::Base
  attr_accessible :code, :redeemed, :value
end
