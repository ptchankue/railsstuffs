class ArticlesController < ApplicationController
  # Run the set_article method before specific actions
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  def index
    @articles = Article.all # Fetch all articles from the database
  end

  # GET /articles/:id
  def show
    # @article is already set by the before_action
  end

  # GET /articles/new
  def new
    @article = Article.new # Initialize a new article for the form
  end

  # GET /articles/:id/edit
  def edit
    # @article is already set by the before_action
  end

  # POST /articles
  def create
    @article = Article.new(article_params) # Create with strong parameters

    if @article.save
      redirect_to @article, notice: 'Article was successfully created.'
    else
      render :new # Re-render the 'new' template if saving fails
    end
  end

  # PATCH/PUT /articles/:id
  def update
    if @article.update(article_params)
      redirect_to @article, notice: 'Article was successfully updated.'
    else
      render :edit # Re-render the 'edit' template if updating fails
    end
  end

  # DELETE /articles/:id
  def destroy
    @article.destroy
    redirect_to articles_url, notice: 'Article was successfully destroyed.'
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :body) # Strong parameters
    end
end
