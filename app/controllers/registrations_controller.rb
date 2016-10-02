class RegistrationsConstroller < Devise::RegistrationsController
	private

	def sign_up_params
		params.require(:user).permit(:login, :email, :password, :password_confirmation, :name, :birthday, :celphone, :numberphone, :avatar, :avatar_cache, :zipcode, :street, :number, :complement, :neighborhood, :city, :state)
	end

	def account_update_params
		params.require(:user).permit(:login, :email, :password, :password_confirmation, :name, :birthday, :celphone, :numberphone, :current_password, :avatar, :avatar_cache, :zipcode, :street, :number, :complement, :neighborhood, :city, :state)
	end
end

#controller sobrescrito pois precisamos de mais coisa que o antigo da gem não tem, ai estamos fazendo um nome
#que contem todas as informações que queremos.