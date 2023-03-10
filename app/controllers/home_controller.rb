class HomeController < ApplicationController
  def index
    render json: {
      message: "welcome mangosteen"
    }
  end
end
