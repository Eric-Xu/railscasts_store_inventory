class RedirectController < ApplicationController
  # Ep 46: Catch-all Routes
  def index
  	# render text: params.inspect
  	product = Product.find(:first, conditions: ['name LIKE ?', "#{params[:path]}%"])
  	if product.nil?
  		flash[:notice] = "No products found with that name."
  		redirect_to root_path
  	else
	  	redirect_to product_path(product)
	  end
  end
end
