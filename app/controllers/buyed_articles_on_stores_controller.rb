class BuyedArticlesOnStoresController < ApplicationController
  before_action :set_buyed_articles_on_store, only: [:show, :edit, :update, :destroy]

  # GET /buyed_articles_on_stores
  # GET /buyed_articles_on_stores.json
  def index
    @buyed_articles_on_stores = BuyedArticlesOnStore.all
  end

  # GET /buyed_articles_on_stores/1
  # GET /buyed_articles_on_stores/1.json
  def show
  end

  # GET /buyed_articles_on_stores/new
  def new
    @buyed_articles_on_store = BuyedArticlesOnStore.new
  end

  # GET /buyed_articles_on_stores/1/edit
  def edit
  end

  # POST /buyed_articles_on_stores
  # POST /buyed_articles_on_stores.json
  def create
    @buyed_articles_on_store = BuyedArticlesOnStore.new(buyed_articles_on_store_params)

    respond_to do |format|
      if @buyed_articles_on_store.save
        format.html { redirect_to @buyed_articles_on_store, notice: 'Buyed articles on store was successfully created.' }
        format.json { render :show, status: :created, location: @buyed_articles_on_store }
      else
        format.html { render :new }
        format.json { render json: @buyed_articles_on_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buyed_articles_on_stores/1
  # PATCH/PUT /buyed_articles_on_stores/1.json
  def update
    respond_to do |format|
      if @buyed_articles_on_store.update(buyed_articles_on_store_params)
        format.html { redirect_to @buyed_articles_on_store, notice: 'Buyed articles on store was successfully updated.' }
        format.json { render :show, status: :ok, location: @buyed_articles_on_store }
      else
        format.html { render :edit }
        format.json { render json: @buyed_articles_on_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buyed_articles_on_stores/1
  # DELETE /buyed_articles_on_stores/1.json
  def destroy
    @buyed_articles_on_store.destroy
    respond_to do |format|
      format.html { redirect_to buyed_articles_on_stores_url, notice: 'Buyed articles on store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buyed_articles_on_store
      @buyed_articles_on_store = BuyedArticlesOnStore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buyed_articles_on_store_params
      params.require(:buyed_articles_on_store).permit(:quantity, :buying_id, :store_has_article_id)
    end
end
