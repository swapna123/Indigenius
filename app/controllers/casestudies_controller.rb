class CasestudiesController < ApplicationController
  def index
    @latest_testimonial = Testimonials.last
  end
  def online_exam_framework
    @latest_testimonial = Testimonials.last
  end

end
