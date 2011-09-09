class TechnologiesController < ApplicationController
  def index
    @latest_testimonial = Testimonials.last
  end

end
