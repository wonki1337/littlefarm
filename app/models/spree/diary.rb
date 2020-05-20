module Spree
    class Spree::Diary < ActiveRecord::Base
        belongs_to :order
    end
end