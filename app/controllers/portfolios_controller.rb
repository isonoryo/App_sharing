class PortfoliosController < ApplicationController
  def index
    @portfolios = Portfolio.all
  end

  def new
    @portfolios = Portfolio.new
  end

  def create
    @portfolios = current_user.portfolios.build(portfolio_params)
    if @portfolios.save
      redirect_to portfolios_path, notice: "ポートフォリオを投稿しました！"
    else
      render :new
    end
  end

  def show
    @portfolio = Portfolio.find(params[:id])  
  end

  private

    def portfolio_params
      params.require(:portfolio).permit(:name, :comment, :creation_period,
                                        :study_period, :deploy_url, :github_url)
    end
end
