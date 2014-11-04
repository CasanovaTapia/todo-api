class SessionsController < ApplicationController
  def create
    @user = User.authenticate(params[:email], params[:password])

    if @user
      session[:user_id] = @user.id
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    head :no_content
  end
end
