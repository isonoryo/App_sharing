class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
  before_action :authen_user, only: [:edit, :update, :destroy]
 
  def index
    # @portfolios = Portfolio.all.order(created_at:'desc')
    @q = Portfolio.ransack(params[:q])
    @programming_languages = ProgrammingLanguage.all #ransakで使用言語検索を行う為の記述
    @schools = School.all #ransakでスクール検索を行う為の記述
    @portfolios = @q.result(distinct: true).page(params[:page]).per(3) 
  end
  
  #ransack用
  def search
    @q = Portfolio.search(search_params)
    @portfolios = @q.result(distinct: true).page(params[:page]).per(3) 
  end
  
  #いいねランキング（いいね数をカウントして、TOP３を格納）へ 
  def ranking
    @all_ranks = Portfolio.find(Like.group(:portfolio_id).order('count(portfolio_id) desc').limit(3).pluck(:portfolio_id))  
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = current_user.portfolios.build(portfolio_params)
    if params[:back]
      render :new
    elsif @portfolio.save
      redirect_to portfolios_path, notice: "ポートフォリオを投稿しました！"
    else
      render :new
    end
  end

  def show
    @portfolio_comments = @portfolio.portfolio_comments
    @portfolio_comment = @portfolio.portfolio_comments.build
  end

  def edit
  end

  def update
    if @portfolio.update(portfolio_params)
      redirect_to portfolios_path, notice: "ポートフォリオを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @portfolio.destroy
    redirect_to portfolios_path, notice: "ポートフォリオを削除しました！"
  end

  def confirm
    @portfolio = current_user.portfolios.build(portfolio_params)
    render :new if @portfolio.invalid?
  end

  private

    def portfolio_params
      params.require(:portfolio).permit(:name, :comment, :creation_period, :school_id,
                                        :study_period, :deploy_url, :github_url, programming_language_ids: [] )
    end

    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

    def search_params
      params.require(:q).permit!
    end

    def authen_user
      @portfolio = Portfolio.find(params[:id])
      unless current_user.id == @portfolio.user.id
        flash[:notice] = "投稿者以外の編集は出来ません。"
        redirect_to portfolios_path
      end
    end
end
