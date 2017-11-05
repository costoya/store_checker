class StoreHasArticlesController < ApplicationController
  before_action :set_store_has_article, only: [:show, :edit, :update, :destroy]

  # GET /store_has_articles
  # GET /store_has_articles.json
  def index
    @store_has_articles = StoreHasArticle.all
  end

  # GET /store_has_articles/1
  # GET /store_has_articles/1.json
  def show
  end

  # GET /store_has_articles/new
  def new
    @store_has_article = StoreHasArticle.new
  end

  # GET /store_has_articles/1/edit
  def edit
  end

  # POST /store_has_articles
  # POST /store_has_articles.json
  def create
    @store_has_article = StoreHasArticle.new(store_has_article_params)

    respond_to do |format|
      if @store_has_article.save
        format.html { redirect_to @store_has_article, notice: 'Store has article was successfully created.' }
        format.json { render :show, status: :created, location: @store_has_article }
      else
        format.html { render :new }
        format.json { render json: @store_has_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_has_articles/1
  # PATCH/PUT /store_has_articles/1.json
  def update
    respond_to do |format|
      if @store_has_article.update(store_has_article_params)
        format.html { redirect_to @store_has_article, notice: 'Store has article was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_has_article }
      else
        format.html { render :edit }
        format.json { render json: @store_has_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_has_articles/1
  # DELETE /store_has_articles/1.json
  def destroy
    @store_has_article.destroy
    respond_to do |format|
      format.html { redirect_to store_has_articles_url, notice: 'Store has article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_has_article
      @store_has_article = StoreHasArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_has_article_params
      params.require(:store_has_article).permit(:url, :store_id, :article_id)
    end
end
