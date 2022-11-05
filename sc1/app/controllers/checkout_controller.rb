class CheckoutController < ApplicationController
	def create

		product = Product.find(params[:id])

		@session = Stripe::Checkout::Session.create({
			payment_method_types: ['card'],
			line_items: [{
				name: product.Pname,
				amount: product.price*100,
				currency: "inr",
				quantity: 1
			}],
			mode: 'payment',
			success_url: root_url,

			cancel_url: root_url,

		})
		# debugger
		if @session.payment_status == "paid"
			product.qui = product.qui - 1    
			product.update(qui: product.qui)
		end

		respond_to do |format|
			format.js
		end
	end
end
