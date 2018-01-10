class AuctionController < ApplicationController
    
   #before_action :set_album, only: [:show, :edit, :update, :destroy, :show_photo]

  # GET /albums
  # GET /albums.json
  def index
    @auctions = Auction.all
  end

 
  def show
  end

  def show_photo
    @photo = Product.find(params[:photo_id])
  end

  # GET /albums/new
  def new
    @auction = Auction.new
    @direct_mode = params[:direct_mode]
  end

  # GET /albums/1/edit
  def edit
    @direct_mode = params[:direct_mode]
  end

  # POST /albums
  # POST /albums.json
  def create
    @auction = Auction.new(auction_params)

    respond_to do |format|
      if @auction.save
        store_product
        format.html { redirect_to @auction, notice: 'Auction was successfully created.' }
        format.json { render :show, status: :created, location: @auction }
      else
        format.html { render :new }
        format.json { render json: @auction.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def update
    respond_to do |format|
      if @auction.update(auction_params)
        delete_product
        store_product
        format.html { redirect_to @auction, notice: 'Auction was successfully updated.' }
        format.json { render :show, status: :ok, location: @auction }
      else
        format.html { render :edit }
        format.json { render json: @auction.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @auction.destroy
    respond_to do |format|
      format.html { redirect_to auction_url, notice: 'Auction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auction 
      @auction = Auction.find(params[:id])
    end

    
    
    def auction_params
      params.require(:auction).permit(:auction_price, :start_time,:end_time)
    end

    def store_product
      product = params[:auction][:product]
      product.each{|product| @auction.product.create(url: product)} if product
    end

    def delete_product
      @auction.product.each do |product|
        product.destroy if params[product.id.to_s] == "delete"
      end
    end

end
