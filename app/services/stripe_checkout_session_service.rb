class StripeCheckoutSessionService
  def call(event)
    byebug
    order = Order.find_by(checkout_session_id: event.data.object.id)
    order.update(state: :paid)
  end
end
