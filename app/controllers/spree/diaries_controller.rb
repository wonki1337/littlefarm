class Spree::DiariesController < Spree::StoreController
  
  # before_action :set_spree_order
  before_action :set_spree_diary, only: [:show]
  



  # GET /spree/diaries
  # GET /spree/diaries.json
  def index
    # @order = Spree::Order.find(params[:order_id])  
    @order = Spree::Order.find(params[:order_id])  
   
    @diaries = @order.diaries
  end

  # GET /spree/diaries/1
  # GET /spree/diaries/1.json
  def show
     @diary = Spree::Diary.find(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
     def set_spree_order
        @spree_order = Spree::Order.find(params[:order_id])  
    end
    
    
    def set_spree_diary
        
        @diary = Spree::Diary.find(params[:id])
        
    end

    # Only allow a list of trusted parameters through.
    def spree_diary_params
        params.require(:spree_diary).permit(:title, :body, :order_id)
    end
    
    
end
