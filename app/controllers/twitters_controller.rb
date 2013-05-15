class TwittersController < ApplicationController
  def index
    @twitters = Twitter.all
  end

  def show
    @twitter = Twitter.find(params[:id])
  end

  def new
    @twitter = Twitter.new
  end

  def create
    @twitter = Twitter.new(params[:twitter])
    if @twitter.save
      redirect_to @twitter, :notice => "Successfully created twitter."
    else
      render :action => 'new'
    end
  end

  def edit
    @twitter = Twitter.find(params[:id])
  end

  def update
    @twitter = Twitter.find(params[:id])
    if @twitter.update_attributes(params[:twitter])
      redirect_to @twitter, :notice  => "Successfully updated twitter."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @twitter = Twitter.find(params[:id])
    @twitter.destroy
    redirect_to twitters_url, :notice => "Successfully destroyed twitter."
  end
end
