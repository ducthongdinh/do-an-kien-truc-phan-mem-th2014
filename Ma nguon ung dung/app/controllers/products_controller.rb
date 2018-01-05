class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :edit, :update, :destroy, :show_resource]
    def index
        @products = Product.all
    end
    def show
        @product = Product.find(params[:id])
    end

  
  def show_resource
    @resource = Resource.find(params[:resource_id])
  end


  def new
    @product = Product.new
    @direct_mode = params[:direct_mode]
  end

  
  def edit
    
  end


  def create
    @product = Product.new(product_params)
    respond_to do |format|
      if @product.save
        store_resources
        format.html { redirect_to @product, notice: 'product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @product.update(product_params)
        delete_resources
        store_resources
        format.html { redirect_to @product, notice: 'product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Album was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_product
      @product = Product.find(params[:id])
    end

    
    def product_params
      params.require(:product).permit(:name, :description,:buy_now_price,:starting_price)
    end

    def store_resources    
      resources = params[:product][:resources]
      resources.each{|resource| @product.resources.create(url: resource)} if resources
    end

    def delete_resources
      @product.resources.each do |resource|
        resource.destroy if params[resource.id.to_s] == "delete"
      end
    end


end
