class PagesController < ApplicationController
	require 'json'
	require 'open-uri'
  def index
  	@events = Event.all
    begin
  	 @guests = JSON.parse(open("http://hq.varnalab.org/list.php").read) rescue {}
    end
  	@tweets = (Twitter.user_timeline("varnalab")).first(5) rescue {}
  end

  def show
    @page = find_page(params[:id])
  end
end
