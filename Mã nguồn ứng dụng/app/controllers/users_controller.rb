class UsersController < ApplicationController
	skip_before_action :verify_authenticity_token
  	def index
	  	@users = User.where(role: -1).or(User.where(role: 1)).all
	  	@admins = User.where(role: -2).or(User.where(role: 2)).all
  	end

	def edit
		@user = User.find(params[:id])
	end

	def blockUser
		user = User.find(params[:id])
	  	user.role = -1
		if user.save
			flash[:notice] = "User is blocked successfully!"
			redirect_to '/users'
		end
	end

  	def unblockUser
	  	user = User.find(params[:id])
	  	user.role = 1
		if user.save
			flash[:notice] = "User is unblocked successfully!"
			redirect_to '/users'
		end
  	end

  	def blockAdmin
  		user = User.find(params[:id])
	  	user.role = -2
		if user.save
			flash[:notice] = "Admin is blocked successfully!"
			redirect_to '/users'
		end
  	end

  	def unblockAdmin
  		user = User.find(params[:id])
	  	user.role = 2
	if user.save
			flash[:notice] = "Admin is unblocked successfully!"
			redirect_to '/users'
		end		
  	end

       
	def update
		@user = User.find(params[:id])
		# @user.update(role: params[:user][:role])
		if @user.update(role: params[:user][:role])
			flash[:notice] = "User is updated successfully!"
			redirect_to '/users'
		end
	end

end
