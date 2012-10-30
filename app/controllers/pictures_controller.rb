class PicturesController < ApplicationController
  def delete_all
    Picture.all.each do |bad_pic|
      if bad_pic.url == nil || bad_pic.url == ""
        bad_pic.destroy
      end
    end 
    redirect_to pictures_url
  end
    
    def edit
    @picture = Picture.find_by_id(params[:id])
   end
   
   def update
     picture = Picture.find_by_id(params[:id])
     picture.url = params[:url]
     picture.title = params[:title]
     picture.note = params[:note]
     picture.save
     redirect_to picture_url(picture.id)
   end
  
  def destroy
    p = Picture.find_by_id(params[:id])
    p.destroy
    redirect_to pictures_url
  end
  
  def show
     @width = params[:width] 	
     @color = params[:color]
     @pic = Picture.find_by_id(params[:id])
  end
  
  def new
    
  end
  
    def pic1
      @pic1 = picture_data[0]
    end 
    
  def pic2
      @pic1 = picture_data[1]
    end
  
  def index
      # @pics = picture_data
      #       if params[:url]
        # p = Picture.new
        #         p.url = params[:url]
        #         p.title = params[:title]
        #         p.save
      #end
      @pictures = Picture.all
      respond_to do |format|
        format.html # render 'index'
        format.json { render :json => @pictures }
      end
      @width = params[:width] 	
      @color = params[:color]
    end        
    
    # def picture_data 
    #               return [  { :url => "http://sphotos-a.xx.fbcdn.net/hphotos-prn1/155101_291959114244144_397606814_n.jpg",
    #                         :title => "Lucid Living Coaching" },
    #                         { :url => "http://sphotos-b.xx.fbcdn.net/hphotos-prn1/564784_292560604183995_562055491_n.jpg", 
    #                         :title => "Get What You Want The Most" },
    #                         { :url => "http://sphotos-a.xx.fbcdn.net/hphotos-prn1/155194_291960947577294_1785838785_n.jpg",
    #                         :title => "Overwhelmed Opitimist" }
    #                         ]  
    #           
    #           end
    
    def create
      p = Picture.new
      p.url = params[:url]
      p.title = params[:title]
      p.note = params[:note]
      p.save
      
    redirect_to '/pictures'
    end
end    
    
