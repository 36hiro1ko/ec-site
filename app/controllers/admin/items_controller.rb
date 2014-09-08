class Admin::ItemsController < ApplicationController
  before_action :set_admin_item, only: [:show, :edit, :update, :destroy]
  layout 'admin'
  # GET /admin/items
  # GET /admin/items.json
  def index
    #@admin_items = Admin::Item.all
    @items = Item.all
  end

  # GET /admin/items/1
  # GET /admin/items/1.json
  def show
  end

  # GET /admin/items/new
  def new
    #@admin_item = Admin::Item.new
    @item = Item.new
  end

  # GET /admin/items/1/edit
  def edit
  end

  # POST /admin/items
  # POST /admin/items.json
  def create
    #@admin_item = Admin::Item.new(admin_item_params)
    @item = Item.new(admin_item_params)

=begin
respond_to do |format|
if @admin_item.save
format.html { redirect_to @admin_item, notice: 'Item was successfully created.' }
format.json { render action: 'show', status: :created, location: @admin_item }
else
format.html { render action: 'new' }
format.json { render json: @admin_item.errors, status: :unprocessable_entity }
end
end
=end

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @item }
      else
        format.html { render action: 'new' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /admin/items/1
  # PATCH/PUT /admin/items/1.json
  def update
=begin
respond_to do |format|
if @admin_item.update(admin_item_params)
format.html { redirect_to @admin_item, notice: 'Item was successfully updated.' }
format.json { head :no_content }
else
format.html { render action: 'edit' }
format.json { render json: @admin_item.errors, status: :unprocessable_entity }
end
end
=end
    respond_to do |format|
      if @item.update(admin_item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end

  end

  # DELETE /admin/items/1
  # DELETE /admin/items/1.json
  def destroy
=begin
@admin_item.destroy
respond_to do |format|
format.html { redirect_to admin_items_url }
format.json { head :no_content }
end
=end
    @item.destroy
    respond_to do |format|
      format.html { redirect_to admin_items_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_admin_item
    #@admin_item = Admin::Item.find(params[:id])
    @item = Item.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def admin_item_params
    #params.require(:admin_item).permit(:name, :price)
    params.require(:item).permit(:name, :price)
  end
end
