class Admin::PagesController < Admin::BaseController

  before_filter :authenticate_user!
  inherit_resources

  actions :show, :new, :create, :update, :edit, :destroy

  def index
    @pages = Page.where(:blogpost => false, :parent_id => nil)
  end

  def index_blog
    @blogposts = Page.where(:blogpost => true)
  end

  def destroy
    destroy! :flash => !request.xhr?
  end
end
