module Spree
      class OrderDecorator < ActiveRecord::Base
        Spree::Order.class_eval do
        has_many :diaries
        end
        
      end
end

