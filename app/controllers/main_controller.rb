class MainController < ApplicationController
  def index
  end

  def phase_3 ; end

  def list
    @procedures = List.all.page(params[:page]).per(10)
  end
end
