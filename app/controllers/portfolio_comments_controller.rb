class PortfolioCommentsController < ApplicationController
  before_action :set_portfolio, only: [:create, :edit, :update, :destroy]

  def create
    @portfolio_comment = current_user.portfolio_comments.build(portfolio_comment_params)
    @portfolio_comment.portfolio_id = params[:portfolio_id]
    respond_to do |format|
      if @portfolio_comment.save
        flash.now[:notice] = 'コメントが投稿されました'
        format.js { render :index }
      else
        flash.now[:notice] = 'コメントの投稿に失敗しました'
        format.js { render :error }
      end
    end
  end

  def edit
    @portfolio_comment = @portfolio.portfolio_comments.find(params[:id])
    respond_to do |format|
      flash.now[:notice] = 'コメントの編集中'
      format.js { render :edit }
    end
  end

  def update
    @portfolio_comment = @portfolio.portfolio_comments.find(params[:id])
      respond_to do |format|
        if @portfolio_comment.update(portfolio_comment_params)
          flash.now[:notice] = 'コメントが編集されました'
          format.js { render :index }
        else
          flash.now[:notice] = 'コメントの編集に失敗しました'
          format.js { render :edit_error }
        end
      end
  end

  def destroy
    @portfolio_comment = PortfolioComment.find(params[:id])
      @portfolio_comment.destroy
      respond_to do |format|
        flash.now[:notice] = 'コメントが削除されました'
        format.js { render :index }
      end
  end

  private

  def portfolio_comment_params
    params.require(:portfolio_comment).permit(:comment)
  end
  
  def set_portfolio
    @portfolio = Portfolio.find(params[:portfolio_id])
  end
end