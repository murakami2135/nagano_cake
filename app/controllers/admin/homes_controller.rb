class Admin::HomesController < ApplicationController
  before_action :move_to_signed_in, except: []

  def top
    @orders = Order.page(params[:page]).reverse_order

  end

  #購入者のフルネームを作成
  def customer_full_name
    self.customer.last_name + self.customer.first_name
  end



end
