class UsersController < Clearance::UsersController
	def edit
		@user = current_user
	end
end