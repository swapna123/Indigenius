class ServiceController < ApplicationController
  def index
   @latest_testimonial = Testimonials.last
  end
  def sharepoint_services
   @latest_testimonial = Testimonials.last
  end
  def webapplication_development
   @latest_testimonial = Testimonials.last
  end
  def product_development
   @latest_testimonial = Testimonials.last
  end
  def opensource_customizations
   @latest_testimonial = Testimonials.last
  end
  def staff_augmentation
   @latest_testimonial = Testimonials.last
  end
  def reselling
   @latest_testimonial = Testimonials.last
  end
end
