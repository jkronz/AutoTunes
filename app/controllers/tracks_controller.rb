class TracksController < ApplicationController
  respond_to :json
  def show
    @track = Track.find(params[:id])
    respond_with @track
  end

  def create
    @dj = Dj.find(params[:dj_id])
    Rails.logger.debug "something, please"
    Rails.logger.debug(WebsocketRails["DJ:#{@dj.id}"].inspect)
    @track = @dj.next
    respond_with @track, status: :created
  end

  def search
    respond_with Track.search_spotify(params[:search])
  end


end
