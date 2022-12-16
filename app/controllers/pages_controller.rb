class PagesController < ApplicationController
  before_action :authenticate_user!
  def news
  end

  def team
  end

  def tasks
  end

  def account
  end
end
