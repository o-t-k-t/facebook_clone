class FeedsController < ApplicationController
  before_action :require_logged_in, only: %i[new create destroy]

  def index
    @feeds = Feed.all
  end

  def new
    @feed = Feed.new
  end

  def edit
    @feed = Feed.find(params[:id])
  end

  def create
    @feed = Feed.new(feed_params)

    if @feed.save
      redirect_to feeds_path
    else
      render :new
    end
  end

  def update
    @feed = Feed.find(params[:id])
    if @feed.update(feed_params)
      redirect_to feeds_path
    else
      render :edit
    end
  end

  def destroy
    @feed = Feed.find(params[:id])
    @feed.delete
    redirect_to feeds_path
  end

  def confirm
    @feed = Feed.new(feed_params)
    render :new and return if @feed.invalid?
  end

  private

  def feed_params
    params.require(:feed).permit(:title, :description, :image, :image_cache)
  end

  def require_logged_in
    redirect_to feeds_path unless logged_in?
  end
end
