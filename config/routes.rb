SouthLoopCampusRsvp::Application.routes.draw do
  root to: "application#home"
  resources :rsvps, only: [:create, :index]
end
