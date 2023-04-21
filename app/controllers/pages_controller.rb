class PagesController < ApplicationController
  def page
    render json: {
      params: params,
      url_for: url_for(lang: params[:lang], country: params[:country])
    }
  end
end
