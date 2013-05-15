class Event::CategoriesController < ApplicationController
  # GET /event/categories
  # GET /event/categories.json
  def index
    @event_categories = Event::Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @event_categories }
    end
  end

  # GET /event/categories/1
  # GET /event/categories/1.json
  def show
    @event_category = Event::Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event_category }
    end
  end

  # GET /event/categories/new
  # GET /event/categories/new.json
  def new
    @event_category = Event::Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event_category }
    end
  end

  # GET /event/categories/1/edit
  def edit
    @event_category = Event::Category.find(params[:id])
  end

  # POST /event/categories
  # POST /event/categories.json
  def create
    @event_category = Event::Category.new(params[:event_category])

    respond_to do |format|
      if @event_category.save
        format.html { redirect_to @event_category, notice: 'Category was successfully created.' }
        format.json { render json: @event_category, status: :created, location: @event_category }
      else
        format.html { render action: "new" }
        format.json { render json: @event_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /event/categories/1
  # PUT /event/categories/1.json
  def update
    @event_category = Event::Category.find(params[:id])

    respond_to do |format|
      if @event_category.update_attributes(params[:event_category])
        format.html { redirect_to @event_category, notice: 'Category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event/categories/1
  # DELETE /event/categories/1.json
  def destroy
    @event_category = Event::Category.find(params[:id])
    @event_category.destroy

    respond_to do |format|
      format.html { redirect_to event_categories_url }
      format.json { head :no_content }
    end
  end
end
