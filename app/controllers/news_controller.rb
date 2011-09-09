class NewsController < ApplicationController
 
 before_filter :check_session , :except => :new_index
layout :choose_layout
# layout 'admin' , :except => :new_index

#layout 'application' , :only => :new_index

  def index
    @news=News.all
    #respond_to do |format|
     # format.html 
  #end
  end

  def new
    @news = News.new
    #respond_to do |format|
     # format.html 
  #end
  end

  def create
    @news = News.new(params[:news])
    respond_to do |format|
      if @news.save
        format.html { redirect_to(@news, :notice => 'Update was successfully created.') }
       else
        format.html { render :action => "new" }
     end
  end
  end

  def edit
   @news = News.find(params[:id])
  end

  def update
    @news = News.find(params[:id])
    respond_to do |format|
      if @news.update_attributes(params[:news])
        format.html { redirect_to(news_index_path, :notice => 'Update was successfully updated.') }
     else
        format.html { render :action => "edit" }
    end
  end
end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
    #respond_to do |format|
     # format.html { redirect_to(news_index_path) }   
  #end
end

  def show
   @news = News.find(params[:id])
   #respond_to do |format|
    #  format.html
 #end
 end
 def new_index
   @latest_testimonial = Testimonials.last
   @latest_news = News.all
 end
private
def choose_layout
puts 'ssssssssssssss'
if params[:action] == "new_index"
  'application'
else
  'admin'
end
end
end
