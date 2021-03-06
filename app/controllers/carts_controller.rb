class CartsController < ApplicationController
	
	def update
		product =Product.find(params[:cart][:product_id])
		current_cart.products << product
		redirect_to product_path(product)
	end

	def edit
		@products =Cart.find(params[:id]).products
	end

	def destroy
      current_cart.products.delete(Product.find(params[:cart][:product_id]))
	  redirect_to '/'
   end

end
