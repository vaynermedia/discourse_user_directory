class DirectoriesController < ApplicationController
  def index
    @users = User.order("COALESCE(last_seen_at, to_date('1970-01-01', 'YYYY-MM-DD')) DESC, username")
    @users = @users.where('username_lower like :filter or email like :filter or name like :filter', filter: "%#{params[:filter]}%") if params[:filter].present?   
    render :json => @users.to_json
  end
end
