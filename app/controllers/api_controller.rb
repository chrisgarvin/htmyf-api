class ApiController < ApplicationController
  def submit_feelings
    message = Message.first
    message.update(message: params["message"])
    Feeling.create(
      reaction: params["reaction"],
      current: params["current"]
    )
    render json: { response: "SUCCESS" }
  end

  def current_message
    message = Message.first.nil? ?  Message.create(message: "uh suh dude?") : Message.first
    render json: { message: message.message }
  end

  def stats
    reactions = {}
    current = {}
    Feeling.all.map do |feeling|
      reactions[feeling.reaction].nil? ? reactions[feeling.reaction] = 1 : reactions[feeling.reaction] += 1
      current[feeling.current].nil? ? current[feeling.current] = 1 : current[feeling.current] += 1
    end
    render json: { response: "SUCCESS", reactions: reactions, current: current }
  end
end
