module Spree
  module Admin
    class Spree::ProductsControllerDecorator < ResourceController


            def add_detail
        	    @product = Product.find(params[:product_id])
        	    @product.detail = params[:detail]
                @product.save
            end

    end
end
end