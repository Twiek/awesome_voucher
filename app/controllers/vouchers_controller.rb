class VouchersController < ApplicationController
  def redeem
    voucher = Voucher.find_by_code(params[:voucher_code].downcase)
    if voucher && voucher.redeemed == false
      voucher.redeemed = true
      voucher.save
      flash[:notice] = "Der Gutschein wurde erfolgreich entwertet!"
      redirect_to root_path
    elsif voucher && voucher.redeemed == true
      flash[:alert] = "Dieser Gutscheincode wurde bereits entwertet..."
      redirect_to root_path
    else
      flash[:alert] = "Dieser Gutscheincode existiert leider nicht... "
      redirect_to root_path
    end
  end
end
