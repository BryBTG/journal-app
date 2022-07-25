class HomeController < ApplicationController
  before_action :set_tasks
  before_action :set_categories

  def index
  end

  def set_tasks
    @tasks = Task.all.order(:deadline)
  end

  def set_categories
    if user_signed_in?
      @categories = current_user.categories
    end
  end
end
