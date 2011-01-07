class ProductOrdersController < ApplicationController
  # GET /product_orders
  # GET /product_orders.xml
  def index
    @product_orders = ProductOrder.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product_orders }
    end
  end

  # GET /product_orders/1
  # GET /product_orders/1.xml
  def show
    @product_order = ProductOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product_order }
    end
  end

  # GET /product_orders/new
  # GET /product_orders/new.xml
  def new
    @product_order = ProductOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product_order }
    end
  end

  # GET /product_orders/1/edit
  def edit
    @product_order = ProductOrder.find(params[:id])
  end

  # POST /product_orders
  # POST /product_orders.xml
  def create
    @product_order = ProductOrder.new(params[:product_order])

    respond_to do |format|
      if @product_order.save
        flash[:notice] = 'ProductOrder was successfully created.'
        format.html { redirect_to(@product_order) }
        format.xml  { render :xml => @product_order, :status => :created, :location => @product_order }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_orders/1
  # PUT /product_orders/1.xml
  def update
    @product_order = ProductOrder.find(params[:id])

    respond_to do |format|
      if @product_order.update_attributes(params[:product_order])
        flash[:notice] = 'ProductOrder was successfully updated.'
        format.html { redirect_to(@product_order) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_orders/1
  # DELETE /product_orders/1.xml
  def destroy
    @product_order = ProductOrder.find(params[:id])
    @product_order.destroy

    respond_to do |format|
      format.html { redirect_to(product_orders_url) }
      format.xml  { head :ok }
    end
  end
end
