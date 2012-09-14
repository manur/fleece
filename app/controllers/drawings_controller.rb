class DrawingsController < ApplicationController

  def index
  end

  def show
    @drawing = Drawing.find(params[:id])
    @data = @drawing.data
  end

end
