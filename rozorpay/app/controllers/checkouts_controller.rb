class CheckoutsController < ApplicationController
	def create
		debugger
		orders = Razorpay::Order.all
	end
	# def create
	# 	# debugger
	#     price = params[:plan] # passed in via the hidden field in pricing.html.erb

	#     session = Stripe::Checkout::Session.create(
	#     	customer: current_user.stripe_id,
	#     	client_reference_id: current_user.id,
	#     	success_url: root_url + "success?session_id={CHECKOUT_SESSION_ID}",
	#     	cancel_url: posts_url,
	#     	payment_method_types: ['card'],
	#     	mode: 'subscription',
	    	
	#     	customer_email: current_user.email,
	#     	line_items: [{
	#     		quantity: 1,
	#     		price: price,
	#     	}]
	#     	)
	#     #render json: { session_id: session.id } # if you want a json response
	#     redirect_to session.url, allow_other_host: true
	# end
	# def success
	# 	#debugger

	# 	session = Stripe::Checkout::Session.retrieve(params[:session_id])
	# 	@customer = Stripe::Customer.retrieve(session.customer)
	# 	if session.amount_total == 100000
	# 		@sub =Subscription.create(subscription_id:session.subscription,status:session.payment_status,customer_id:@customer.id,user_id:current_user.id,current_period_start:Time.now,current_period_end:Time.now+1.year, plan_id:"VIP Yearly")
	# 	else
	# 		@sub =Subscription.create(subscription_id:session.subscription,status:session.payment_status,customer_id:@customer.id,user_id:current_user.id,current_period_start:Time.now,current_period_end:Time.now+1.month,plan_id:"VIP Monthly")
	# 	end
	# end
end
