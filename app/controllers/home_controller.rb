class HomeController < ApplicationController
  def index
     @latest_news = News.last
     @latest_testimonial = Testimonials.last
  end 
  def careers
    @latest_testimonial = Testimonials.last
  end
  def contact_us
    @latest_testimonial = Testimonials.last
  end
  def sitemap
     @latest_testimonial = Testimonials.last
  end
  def disclaimer
     @latest_testimonial = Testimonials.last
  end
  def privacy_policy
     @latest_testimonial = Testimonials.last
  end
  def about_us
     @latest_testimonial = Testimonials.last
  end
  def feedback 
     @latest_testimonial = Testimonials.last
  end

  def process_email
   # puts '111111111111111111111111', params[:email]
    UserMailer.send_email(params[:email]).deliver
  end
end
