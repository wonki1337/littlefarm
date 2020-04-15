module Spree
  module BaseHelperDecorator
      
        def meta_image_data_tag
          tag('meta', property: 'og:image', content: "https://images.unsplash.com/photo-1457530378978-8bac673b8062?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80" )
        end
        
   end 
end