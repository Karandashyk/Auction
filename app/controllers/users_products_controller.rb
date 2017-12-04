class UsersProductsController < ApplicationController
  before_action :set_users_product, only: [:show, :edit, :update, :destroy]

  # GET /users_products
  # GET /users_products.json
  def index
    @users_products = UsersProduct.all
  end

  # GET /users_products/1
  # GET /users_products/1.json
  def show
  end

  # GET /users_products/new
  def new
    @users_product = UsersProduct.new
  end

  # GET /users_products/1/edit
  def edit
  end

  # POST /users_products
  # POST /users_products.json
  def create
    @users_product = UsersProduct.new(users_product_params)

    respond_to do |format|
      if @users_product.save
        format.html { redirect_to @users_product, notice: 'Users product was successfully created.' }
        format.json { render :show, status: :created, location: @users_product }
      else
        format.html { render :new }
        format.json { render json: @users_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_products/1
  # PATCH/PUT /users_products/1.json
  def update
    respond_to do |format|
      if @users_product.update(users_product_params)
        format.html { redirect_to @users_product, notice: 'Users product was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_product }
      else
        format.html { render :edit }
        format.json { render json: @users_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_products/1
  # DELETE /users_products/1.json
  def destroy
    @users_product.destroy
    respond_to do |format|
      format.html { redirect_to users_products_url, notice: 'Users product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_product
      @users_product = UsersProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def users_product_params
      params.require(:users_product).permit(:user_id, :product_id)
    end
end
