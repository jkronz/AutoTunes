class DjsController < ApplicationController

  respond_to :json

  # GET /djs/1
  # GET /djs/1.json
  def show
    @dj = Dj.find(params[:id])
    respond_with @dj
  end

  # POST /djs
  # POST /djs.json
  def create
    @dj = Dj.new(dj_params)
    if @dj.save
      respond_with @dj, status: :created
    else
      respond_with @dj, status: :unprocessable_entity
    end
  end

  private
  def dj_params
    params.slice :seed
  end
end
