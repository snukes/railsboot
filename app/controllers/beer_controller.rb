class BeerController < ApplicationController
  def index
    @beer_navbar = true
    
    @beerList = Beer.all() 
    @categoryList = Beer.all().group(:category)
  end

  def create 
    #@beer = Beer.new(beer_params)
    
    @beer = Beer.new({'name' => 'Spotted Cow', 'brewery' => 'New Glarus Brewing Company', 'desc' => 'Hazy farmhouse ale brewed in New Glarus, WI', 'abv' => '4.80', 'category' => 'ale'}) 


    @beer.save
    redirect_to action: 'index'
  end

  private
    def beer_params
      params.require(:beer).permit(:name, :brewery, :desc, :abv, :category)
    end
end
