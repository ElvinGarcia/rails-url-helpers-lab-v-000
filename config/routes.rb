Rails.application.routes.draw do
  resources :students, only: [:index, :show]

  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
  #get "activate_student/:id", to: "activate_student#show"
  resources :activate_student, only: :show
  get "students/:id", to: "students#show"
end
