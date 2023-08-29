class WelcomeController < ApplicationController
  def index
    @tasks = ["be cool", "dont to drugs"]
  end
end
