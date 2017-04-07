class CadsController < ApplicationController

  def index

  end

  def design
    cad = Cad.find_by(id:params[:id])
    render json: cad
  end

end
