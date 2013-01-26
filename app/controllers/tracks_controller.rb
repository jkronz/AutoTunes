class TracksController < ApplicationController
  respond_to :json
  def show
    @track = Track.find(params[:id])
    respond_with @track
  end

  def create
    @dj = Dj.find(params[:dj_id])
    @track = @dj.next_generated_track
    respond_with @track, status: :created
  end

end
