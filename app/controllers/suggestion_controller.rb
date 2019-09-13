class SuggestionController < ApplicationController
  def index
     require 'net/http'

    # url = URI.parse('https://maps.googleapis.com/maps/api/place/textsearch/json?query=cc&key=AIzaSyBiAJBK9gGHhTW1-TAdCczJ2Sf1maih8ZQ')
    # req = Net::HTTP::Get.new(url.to_s)
   
    # res = Net::HTTP.start(url.host, url.port) {|http|
    #   http.use_ssl = true
    #   http.request(req)
    # }
    # puts res.body  
    # url = URI.parse('https://maps.googleapis.com/maps/api/place/textsearch/json?query=cc&key=AIzaSyBiAJBK9gGHhTW1-TAdCczJ2Sf1maih8ZQ')
    # req = Net::HTTP::Get.new(url.path) 
    # http = Net::HTTP.new(url.host, url.port)
    # http.use_ssl = true
    # response = http.request(req)
    # puts response
    require 'net/http'
    require 'json'
    require 'cgi'

    def path_with_params(page, params)
      return page if params.empty?
      page + "?" + params.map {|k,v| CGI.escape(k.to_s)+'='+CGI.escape(v.to_s) }.join("&")
    end

    url = path_with_params('https://maps.googleapis.com/maps/api/place/textsearch/json', :query => params[:query], :key => 'AIzaSyBiAJBK9gGHhTW1-TAdCczJ2Sf1maih8ZQ')
    uri = URI(url)  
    response = Net::HTTP.get(uri)
    
    render json: response
  end

  def create
  end

  def update
  end

  def destroy
  end
end
