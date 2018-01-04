
class AuctionsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  before_action  :set_auction, only: [:show, :edit, :update, :destroy]
    def index
        @auctions = Auction.all
        
    end
    
    def show
        @auction = Auction.find(params[:id])
    end

    def show_product
      @product = Product.find(params[:product_id])
    end
  
  def show_resource
    
    
  end

  
  def new
    @auction = Auction.new
    
    @auction.build_product
  end

  
  def edit
    
  end

 
  def create
    @auction = Auction.new(auction_params)
    respond_to do |format|
      if @auction.save! 
        store_resources
            format.html { redirect_to @auction, notice: 'auction was successfully created.' }
            format.json { render :show, status: :created, location: @auction }
      else
        format.html { render :new }
        format.json { render json: @auction.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def update
    delete_product_and_resources
    respond_to do |format|
      if @auction.update(auction_params) 
        store_resources
        format.html { redirect_to @auction, notice: 'product was successfully updated.' }
        format.json { render :show, status: :ok, location: @auction }
      else
        format.html { render :edit }
        format.json { render json: @auction.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    delete_product_and_resources
    @auction.destroy
    respond_to do |format|
      format.html { redirect_to auctions_url, notice: 'auction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auction
      @auction = Auction.find(params[:id])
    end

    def auction_params
      params.require(:auction).permit(:auction_price,
       :max_price, :is_finished,
       :start_time, :end_time,
       :user_id,
        product_attributes: [:name, :description, :buy_now_price, :starting_price, :resources]).merge!({user_id: current_user.id})
    end
    def product_params      
      params.permit(:name, :description,:buy_now_price,:starting_price)
    end

    def store_resources    
      # get list of images
      resources = params[:auction][:product_attributes][:resources]
    
        product = Product.where(["auction_id= ?", @auction.id]).first
        # upload images to cloudinary and save url to resource table
        resources.each{|resource| product.resources.create(url: resource)} if resources
    end

    def delete_product_and_resources
      idProduct = Product.where(["auction_id= ?", @auction.id]).ids      
      Product.delete(idProduct)
      Resource.where(["product_id = ?", idProduct]).delete_all
    end
end
