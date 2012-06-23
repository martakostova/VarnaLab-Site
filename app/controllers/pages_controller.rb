class PagesController < ApplicationController
  def index
  	@events = Event.all
  end

  def show
    @page = find_page(params[:id])
  end
end
