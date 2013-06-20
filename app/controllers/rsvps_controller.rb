class RsvpsController < ApplicationController
  before_filter :authenticate, only: :index

  def create
    Rsvp.create!(params.slice(:name_one, :name_two, :name_three, :bringing))
    render json: {ok: true}
  end

  def index
    @rsvps = Rsvp.all
  end

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "foo" && password == "bar"
    end
  end
end
