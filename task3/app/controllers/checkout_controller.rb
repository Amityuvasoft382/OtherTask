class CheckoutController < ApplicationController
	$product_id = nil
	$qui = nil
	def create
		# debugger
		p_id = params[:p_id]
		$qui = params[:quantity]
		$product_id= p_id
		max1= 999999
		 product = Product.find_by(id: $product_id)
		 total = product.s_price * $qui.to_i
		 # debugger
		 if product.qui > $qui.to_i
		if total < max1
		# debugger
		@session = Stripe::Checkout::Session.create({
			payment_method_types: ['card'],
			line_items: [{
				name: product.c_name+" "+product.p_name,
				amount: product.s_price*100,
				currency: "inr",
				quantity: $qui
			}],
			mode: 'payment',
			success_url: checkout_success_url,

			cancel_url: checkout_fail_url,

		})
		 # debugger
		 redirect_to @session.url
		else
			redirect_to checkout_fail_url
		end
	else
		redirect_to checkout_out_of_stock_url
	end
		#  respond_to do |format|
		# 	format.js
		# end
	end
	def success
		@product = Product.find_by(id: $product_id)
		if @product.present?
			@product.qui -= $qui.to_i 
			@product.update(qui:@product.qui)
			$product_id= nil

			# @product.update(qui:@quantity)
			email =Stripe::Checkout::Session.list({limit: 1}).data[0]["customer_details"]["email"]
			PaymentInfomationMailer.create_information(@product,email,$qui).deliver_now
		end
	end
	def fail
		
	end
	def out_of_stock
		
	end
end
