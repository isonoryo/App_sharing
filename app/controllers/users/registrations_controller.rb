
class Users::RegistrationsController < Devise::RegistrationsController

  def show
    # binding.irb
    @user = User.find_by(id: params[:id])
  end

  protected

    def after_sign_up_path_for(resource)
      "/user/#{current_user.id}"
    end

     #編集後にプロフィール画面へ
    def after_update_path_for(resource)
      "/user/#{current_user.id}"
      # binding.irb
    end
end
