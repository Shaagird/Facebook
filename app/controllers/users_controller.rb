class UsersController < ApplicationController
	def index
		@users = User.all
		respond_to do |format|
			format.html
			format.json {render :json => @users}
		end
	end
	def new
		@user = User.new
	end
  
  def show
  	@user = User.find(params[:id])
  	#render plain: params[:user].inspect
  end

	def create
		@user = User.new(user_params)
		if @user.save
		redirect_to @user
	else 
		render 'new'
	end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :dob, :gender, :email, :mobile, :password)
	end
end
