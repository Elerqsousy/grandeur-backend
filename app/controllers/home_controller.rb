class HomeController < ApplicationController
  def index
    msg = Message.order('RANDOM()').first
    render json: { content: msg.greetings }
  end
end
