class QueriesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  skip_before_action :verify_authenticity_token, only: [:create]

  def index
    @user = User.includes(:queries).find(current_user.id)
    puts "👋👋 #{@user.inspect}"
  end

  def create
    helpers.verify_or_create_query
  end
end
