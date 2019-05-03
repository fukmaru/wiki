class PagesController < ApplicationController
  def home
    @contents = Content.where(is_published: true)

    search_params = params.dig("s")
    if search_params
      search_params_arr = search_params.split
      @contents = @contents.where("body ~~* any(array[#{search_params_arr.map{ |i|  %Q('%#{i}%') }.join(',')}])") if search_params_arr.present?
    end

    @search_str = search_params
  end
end
