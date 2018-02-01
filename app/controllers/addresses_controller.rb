class AddressesController < ApplicationController
	def index
	end

	def new
		@user = User.find(params[:user_id])
	end

	def show
		@address = Address.find_by(user_id: params[:user_id])
	end

	def create
		@user = User.find(params[:user_id])
    @address = @user.addresses.create(address_params)
    redirect_to user_address_path(id: params[:user_id])
	end


	private
	def address_params
		params.require(:address).permit(:city, :state, :country, :pincode)
	end

	# def destroy
	# 	@user = User.find(params[:user_id])
	# 	@address = @user.addresses.find(params[:id])
	# 	@address.destroy
	# 	redirect_to users_path
	# end
end
