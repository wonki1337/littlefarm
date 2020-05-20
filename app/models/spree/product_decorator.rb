module Spree
      class ProductDecorator < ActiveRecord::Base
        Spree::Product.class_eval do
        has_many :details
        end
        
      end
end

