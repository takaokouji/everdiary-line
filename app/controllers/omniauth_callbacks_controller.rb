class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def line
    auth = request.env["omniauth.auth"]
    MyLineUser.create!(user: current_user, uid: auth["uid"])
    redirect_to root_path
  end
end
