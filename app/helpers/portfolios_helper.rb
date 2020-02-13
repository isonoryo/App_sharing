module PortfoliosHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_portfolios_path
    elsif action_name == 'edit'
      portfolio_path
    end
  end
end
