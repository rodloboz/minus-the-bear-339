class PaymentsController < ApplicationController
  def new
    @order = current_user.orders.pending.find(params[:order_id])
  end
end
