class Spree::Admin::DiariesController < Spree::OrdersController
    
    
    before_action :set_spree_diary, only: [:show, :edit, :update, :destroy]
    before_action :set_spree_order


  # GET /spree/diaries
  # GET /spree/diaries.json
  def index
    @order = Spree::Order.find(params[:order_id])  
    @diaries = @order.diaries
   
  end

  # GET /spree/diaries/1
  # GET /spree/diaries/1.json
  def show
      @diary = Spree::Diary.find(params[:id])
      
  end

  # GET /spree/diaries/new
  def new
    @spree_diary = @spree_order.diaries.new
  end

  # GET /spree/diaries/1/edit
  def edit
  end

  # POST /spree/diaries
  # POST /spree/diaries.json
  def create
      
    @spree_diary = @spree_order.diaries.new(diary_params)
    @spree_diary.save


    respond_to do |format|
      if @diaries.save
        format.html { redirect_to admin_order_diaries_path, notice: 'Diary was successfully created.' }
        format.json { render :show, status: :created, location: @spree_diary }
      else
        format.html { render :new }
        format.json { render json: @diaries.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spree/diaries/1
  # PATCH/PUT /spree/diaries/1.json
  def update
    
    @diaries = Spree::Diary.find(params[:id])  
    @diaries = @order.diaries
    
    
    respond_to do |format|
      if @spree_diary.update(diary_params)
        format.html { redirect_to @spree_diary, notice: 'Diary was successfully updated.' }
        format.json { render :show, status: :ok, location: @spree_diary }
      else
        format.html { render :edit }
        format.json { render json: @spree_diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spree/diaries/1
  # DELETE /spree/diaries/1.json
  def destroy
    @spree_diary = Spree::Diary.find(params[:id])
    @spree_diary.destroy
    
    respond_to do |format|
      format.html { redirect_to admin_order_diaries_path, notice: 'Diary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    
    def set_spree_order
        @spree_order = Spree::Order.find(params[:order_id])  
    end
    
    
    def set_spree_diary
        
        if @order.present?
          @spree_diary = @spree_order.posts.find(params[:id])
        else
            @spree_diary = Spree::Diary.find(params[:id])
        end
      end
        
    
    def diary_params
        params.require(:spree_diary).permit(:title, :body, :order_id)
    end

    # Only allow a list of trusted parameters through.
    # def spree_diary_params
    #     params.require(:spree_diary).permit(:title, :body, :order_id)
    # end
    

    
end

    