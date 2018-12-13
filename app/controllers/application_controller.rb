class ApplicationController < ActionController::Base
# deviseのコントローラー使う際はその前にconfigure_permitted_parametersを行う
  before_action :configure_permitted_parameters, if: :devise_controller?

#deviseのログイン後のリダイレクト先
  def after_sign_in_path_for(resource)
    if current_user.admin == true
      rails_admin_path
    else
      root_path
    end
  end


  protected
#devise使ってログインする際にふえたカラムがあればここで記載
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username,:email])
  end
end