class EventsController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

  # GET /events
  def index
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # POST /events
  def create
    # TODO: Parse form data.

    # @event = Event.new(:form_data)

    if @event.save
      redirect_to @event
    else
      render "new"
    end
  end

  # GET /events/:id
  def show
  end

  # GET /events/:id/participants
  def participants
  end

  # GET /events/:id/edit
  def edit
  end

  # PATCH /events/:id
  # PUT /events/:id
  def update
  end

  # DELETE /events/:id
  def destroy
  end
end
