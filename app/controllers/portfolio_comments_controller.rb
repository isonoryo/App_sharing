class PortfolioCommentsController < ApplicationController
  before_action :set_portfolio_comment, only: [:show, :edit, :update, :destroy]

  # GET /portfolio_comments
  # GET /portfolio_comments.json
  def index
    @portfolio_comments = PortfolioComment.all
  end

  # GET /portfolio_comments/1
  # GET /portfolio_comments/1.json
  def show
  end

  # GET /portfolio_comments/new
  def new
    @portfolio_comment = PortfolioComment.new
  end

  # GET /portfolio_comments/1/edit
  def edit
  end

  # POST /portfolio_comments
  # POST /portfolio_comments.json
  def create
    @portfolio_comment = PortfolioComment.new(portfolio_comment_params)

    respond_to do |format|
      if @portfolio_comment.save
        format.html { redirect_to @portfolio_comment, notice: 'Portfolio comment was successfully created.' }
        format.json { render :show, status: :created, location: @portfolio_comment }
      else
        format.html { render :new }
        format.json { render json: @portfolio_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portfolio_comments/1
  # PATCH/PUT /portfolio_comments/1.json
  def update
    respond_to do |format|
      if @portfolio_comment.update(portfolio_comment_params)
        format.html { redirect_to @portfolio_comment, notice: 'Portfolio comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @portfolio_comment }
      else
        format.html { render :edit }
        format.json { render json: @portfolio_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolio_comments/1
  # DELETE /portfolio_comments/1.json
  def destroy
    @portfolio_comment.destroy
    respond_to do |format|
      format.html { redirect_to portfolio_comments_url, notice: 'Portfolio comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio_comment
      @portfolio_comment = PortfolioComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_comment_params
      params.require(:portfolio_comment).permit(:comment, :portfolio_id)
    end
end
