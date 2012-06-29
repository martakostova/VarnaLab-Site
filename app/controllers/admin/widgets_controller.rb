class Admin::WidgetsController < Admin::BaseController
	require 'json'
	require 'open-uri'
	before_filter :authenticate_user!
  inherit_resources

  actions :show, :new, :create, :update, :edit, :destroy

  def index
    @widgets = Widget.all
  end

  def show
		@widget = Widget.find(params[:id])
  	@guests = JSON.parse(open("http://hq.varnalab.org/list.php").read)
  	@tweets = (Twitter.user_timeline("varnalab")).first(5)
  end
  def destroy
    destroy! :flash => !request.xhr?
  end
end