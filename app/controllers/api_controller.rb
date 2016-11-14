class ApiController < ApplicationController
  def submit_feelings
    response = params["text"]
    message = Message.first
    message.update(message: response)
    # Feeling.create(
    #   reaction:,
    #   current:
    # )
    render json: { response: "SUCCESS" }
  end

  def current_message
    message = Message.first.nil? ?  Message.create(message: "uh suh dude?") : Message.first
    render json: { message: message.message }
  end

  def stats
    render json: { response: "SUCCESS" }
  end
end
