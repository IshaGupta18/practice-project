class UsersController < ApplicationController
	def index
	end
	def sign_in
	end
	def create_session
		u= User.find_by(email: params[:email], password: params[:password])
		if (u.blank?)
			return redirect_to action: 'index'
		end
		session[:user_id]= u.id
		redirect_to action:'wall'
  	end
	def new
		@user=User.new

  	end
	def wall
	end
	def sign_out
		if !session[:user_id].blank?
			session.delete(:user_id)
		end
		redirect_to action:'index'
	end
  	def create
		User.create(email: params[:user][:email],password: params[:user][:password],age: 			params[:user][:age],name: params[:user][:name])
		redirect_to action:'index'
  	end
end
