class PagesController < ApplicationController
  def page
    url = url_for(lang: params[:lang], country: params[:country])
    render json: {
      params: params,
      url_for: url
    }
  end
end
