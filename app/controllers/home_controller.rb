class HomeController < ApplicationController
  def index
    @organizations_count = Organization.count
  end
end
