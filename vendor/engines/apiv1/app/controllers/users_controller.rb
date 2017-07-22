class Apiv1::UsersController < Apiv1::ApplicationController

  before_action :authenticate_user!, except: :login

  def login
    required_params(:email, :password)

    ok = User.find_by_email(params[:email]).valid_password?(params[:password]) rescue false
    if ok 
        data = {user: params[:email] }  
        token = JWT.encode data, Rails.application.secrets.secret_key_base, 'HS256'
        render json: { atoken: token }, status: 200
    else
        render json: { error: "unknown user or password" }, status: 401
    end  
  end
end