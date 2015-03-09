class StaticController < ApplicationController
  # GET /
  def index
  end

  # GET /about
  def about
  end

  # GET /privacy
  def privacy
  end

  # GET /terms
  def terms
  end

  # GET /utils/map
  def map
    render layout: false
  end
end
