class PicturesController < ApplicationController
  def new
    
  end
  
  def show
    x = params[:id].to_i
    @pic = picture_data[x - 1]
    @width = params[:width]
    @color = params[:color]
  end
  
  def index
    @pics = picture_data
    @pics << { :url => params[:url], :title => params[:title]} 
 
  end
  
 def create
   pictures = Picture.new
   pictures.url = params[:url]
   pictures.title = params[:title]
   pictures.save
   redirect_to 'http://localhost:3000/pictures'   
 end
  
  def picture_data
    return [
      { :url => "http://www.trbimg.com/img-507b73f3/turbine/chi-ct-parking-meter-photo-1120121014192342/600", 
        :title => "Parking Evil"
      },
      { :url => "http://www.trbimg.com/img-507b59e4/turbine/la-153334522.jpg-20121014/600",
        :title => "Candidates"
      },
      { :url => "http://www.trbimg.com/img-5078b31c/turbine/ct-top-less-crowded-ruins-sites-pg-009/600",
        :title => "Mayan Ruins"
        
      }
    ]
  end 
end






