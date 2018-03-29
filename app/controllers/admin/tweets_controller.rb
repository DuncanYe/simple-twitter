class Admin::TweetsController < Admin::BaseController
  def index
    @tweets = Tweet.order(replies_count: :desc)
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to admin_root_path
    flash[:notice] = "Tweet was deleted! "
  end
end
