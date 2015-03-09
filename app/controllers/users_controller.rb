class UsersController < ApplicationController
  before_filter :authenticate_user!, :only => [:edit, :update, :destroy]

  # GET /users
  def index
  end

  # GET /users/new
  def new
    redirect_to new_user_registration_path
  end

  # POST /users
  def create
  end

  # GET /users/:id
  def show
    # TODO: Make this safer.
    @user = User.where(username: params[:id]).take

    respond_to do |format|
      format.html
    end
  end

  # GET /users/:id/hosting
  def hosting
  end

  # GET /users/:id/participating
  def participating
  end

  # GET /users/:id/groups
  def groups
  end

  # GET /users/:id/edit
  def edit
  end

  # PATCH /users/:id
  # PUT /users/:id
  def update
  end

  # DELETE /users/:id
  def destroy
  end
end
