class UrlsController < ApplicationController
  def new
  end

  def create
     if !params[:url].blank?
      client = Bitly.client
        @url = client.shorten(params[:url])
	@urls = @url.short_url
	#@urls = client.shorten(params[:url])
      #@u = client.clicks(params[@urls.short_url])
	@u = Bitly.client.clicks(@url.short_url).global_clicks
	#@u = Bitly.client.shorten('http://www.google.com').clicks
     end
  end

end
