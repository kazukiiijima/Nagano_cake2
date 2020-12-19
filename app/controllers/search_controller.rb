class SearchController < ApplicationController

  def search
  	@value = params["search"]["value"]
    @how = params["search"]["how"]
    @datas = search_for(@how, @value)
  end

  private

  def match(value)
  	Item.where(name: value).or(Item.where(genre_id: value))
  end

  def search_for(how, value)
  	case how
  		when 'match'
  	end
  end

end
