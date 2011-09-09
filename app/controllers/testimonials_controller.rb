class TestimonialsController < ApplicationController

  before_filter :check_session

  layout 'admin'

  def index
    @testimonial=Testimonials.all
    #respond_to do |format|
     # format.html 
  #end
end
  def new
    @testimonial = Testimonials.new
    #respond_to do |format|
     # format.html 
  #end
end
  def show
    @testimonial = Testimonials.find(params[:id])
   #respond_to do |format|
    #  format.html
 #end
  end

  def create
   @testimonial = Testimonials.new(params[:testimonial])
    respond_to do |format|
      if @testimonial.save
        format.html { redirect_to(@testimonial, :notice => 'Testimonial was successfully created.') }
       else
        format.html { render :action => "new" }
     end
  end
  end

  def edit
    @testimonial = Testimonials.find(params[:id])
  end

  def update
   @testimonial = Testimonials.find(params[:id])
    respond_to do |format|
      if @testimonial.update_attributes(params[:testimonial])
        format.html { redirect_to(testimonials_path, :notice => 'Testimonial was successfully updated.') }
     else
        format.html { render :action => "edit" }
    end
  end
  end

  def destroy
    @testimonial = Testimonials.find(params[:id])
    @testimonial.destroy
    #respond_to do |format|
     # format.html { redirect_to(testimonials_path) }   
  #end
  end

end
