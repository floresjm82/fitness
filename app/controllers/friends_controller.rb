class FriendsController < ApplicationController

	def index
		@users = User.all
	end

  def create

    @friends = current_user.friend.new(friend_id: params[:user_id])

    if @friends.save
      flash [:notice] = "You added a friend"
    else
      flash [:error] = "There was an error"
    end

      redirect_to friends_path

  end

  def destroy

    @friend = Friend.find(params[:id])

    if @friend.destroy
      flash[:notice] = "You removed a friend"
    else
      flash[:error] = "There was an error"

      redirect_to friends_path

  end



end
