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

  def request_track
    @dj = Dj.find(params[:id])
    @track = @dj.request_track(track_params)
    respond_with @track, status: :created
  end

  private
  def dj_params
    params.slice :seed
  end

  def track_params
    params.slice :artist, :length, :name, :uri
  end
end
