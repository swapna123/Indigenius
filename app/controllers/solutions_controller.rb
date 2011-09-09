class SolutionsController < ApplicationController
  def index
    @latest_testimonial = Testimonials.last
  end
  def content_manage
    @latest_testimonial = Testimonials.last
  end
  def test_genius
    @latest_testimonial = Testimonials.last
  end
  def equilab
    @latest_testimonial = Testimonials.last
  end
end
