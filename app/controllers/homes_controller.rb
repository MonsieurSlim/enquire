class HomesController < ApplicationController
  skip_filter :authenticate_user!

  def show
  end
end
