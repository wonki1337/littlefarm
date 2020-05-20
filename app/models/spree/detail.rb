module Spree
    class Spree::Detail < ActiveRecord::Base
        belongs_to :product
    end
end