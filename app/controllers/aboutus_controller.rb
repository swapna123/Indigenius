class AboutusController < ApplicationController
  def index
    @latest_testimonial = Testimonials.last
  end
  def why_indigenius
    @latest_testimonial = Testimonials.last
  end
  def our_story
    @latest_testimonial = Testimonials.last
  end
  def clientele
    @latest_testimonial = Testimonials.last
  end
  def commitment
    @latest_testimonial = Testimonials.last
  end
end
