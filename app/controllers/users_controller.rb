class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @tweets = user.tweets.includes(:user).order("created_at DESC")
    # .includes〜の部分は自分が追加。
  end
end
