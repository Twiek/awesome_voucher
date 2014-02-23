class CreateVouchers < ActiveRecord::Migration
  def change
    create_table :vouchers do |t|
      t.string :code
      t.decimal :value, precision: 8, scale: 2
      t.boolean :redeemed, default: false

      t.timestamps
    end
  end
end
