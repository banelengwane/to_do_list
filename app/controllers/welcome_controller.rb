class WelcomeController < ApplicationController
  def index
    @tasks = ["be coo", "dont to drugs"]
  end
end
