class VenuesController < ApplicationController

  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(params[:venue])
    if @venue.save
      redirect_to @venue, :notice => "Successfully created venue."
    else
      render :action => 'new'
    end
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
    if @venue.update_attributes(params[:venue])
      redirect_to @venue, :notice  => "Successfully updated venue."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    redirect_to venues_url, :notice => "Successfully destroyed venue."
  end

#  def all_new #import
#    @venues = Venue.all
#  end
#
#  def create_all
#    #Update all, don't save.  Validate all, drop old values, save.
#    JSON.parse(params[:venue_json]).each do |venue_attributes|
#      (Venue.find(venue_attributes['id']) || Venue.new).send(:attributes=, venue_attributes.slice(Venue.attribute_names), false)#(*Venue.accessible_attributes)
#    end
#    flash[:errors] = Venue.all.errors.to_sentence
#    redirect_to all_new_venues_path
#  end
end
