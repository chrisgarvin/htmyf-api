Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/submit', to: "api#submit_feelings"
  get '/message', to: "api#current_message"
  get '/stats', to: "api#stats"
end
