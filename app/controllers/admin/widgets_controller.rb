class Admin::WidgetsController < Admin::BaseController
	before_filter :authenticate_user!
  inherit_resources

  actions :show, :new, :create, :update, :edit, :destroy

  def index
    @widgets = Widget.all
  end
  
end