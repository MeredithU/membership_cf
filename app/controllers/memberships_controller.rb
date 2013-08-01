class MembershipsController < ApplicationController

  def new
    @membership = Membership.new
  end

  def create
    @membership = Membership.new(params[:membership])
    @membership.user = current_user
    if @membership.save
      flash[:notice] = "You are signed up for the class."
      redirect_to root_path
    else
      #TBD
    end
  end

  def show

  end
end
