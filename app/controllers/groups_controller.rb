class GroupsController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

  # GET /groups
  def index
  end

  # GET /groups/new
  def new
  end

  # POST /groups
  def create
  end

  # GET /groups/:id
  def show
  end

  # GET /groups/:id/hosting
  def hosting
  end

  # GET /groups/:id/members
  def members
  end

  # GET /groups/:id/edit
  def edit
  end

  # PATCH /groups/:id
  # PUT /groups/:id
  def update
  end

  # DELETE /groups/:id
  def destroy
  end
end
