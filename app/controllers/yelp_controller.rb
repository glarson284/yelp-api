class YelpController < ApplicationController

  def index 
    @search = Yelp.client.search('Upper West Side', { term: 'food'})
   
    @search =  @search.to_json
    @search = JSON.parse(@search)
    @search = @search.flatten
    @search = @search.flatten
    binding.pry
  end

end
