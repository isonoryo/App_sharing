class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update]

  def index
    @portfolios = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = current_user.portfolios.build(portfolio_params)
    if @portfolio.save
      redirect_to portfolios_path, notice: "ポートフォリオを投稿しました！"
    else
      render :new
    end
  end

  def show
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

  private

    def portfolio_params
      params.require(:portfolio).permit(:name, :comment, :creation_period,
                                        :study_period, :deploy_url, :github_url)
    end

    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end
end
