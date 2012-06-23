class PagesController < ApplicationController
	require 'json'
	require 'open-uri'
  def index
  	@events = Event.all
  	@guests = JSON.parse(open("http://hq.varnalab.org/list.php").read)
  	@tweets = (Twitter.user_timeline("varnalab")).last(5)
  end

  def show
    @page = find_page(params[:id])
  end
end
