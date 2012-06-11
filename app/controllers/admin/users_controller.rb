class Admin::UsersController < Admin::BaseController

	before_filter :authenticate_user!
	inherit_resources

	actions :show, :new, :create, :update, :edit, :destroy

	def index
	  @users = User.all
	end
	
	def create
    @user = User.new(params[:user])

    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_path, notice: 'User was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end
  
	def destroy
    destroy! :flash => !request.xhr?
  end
end 