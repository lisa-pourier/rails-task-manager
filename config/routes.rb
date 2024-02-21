Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get    "tasks",             to: "tasks#index"

  # Create
  get    "tasks/new",         to: "tasks#new",  as: :new_task
  post   "tasks",             to: "tasks#create"

  get    "tasks/:id",         to: "tasks#show", as: :task

  # Update
  get    "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch  "tasks/:id",      to: "tasks#update"

  # Delete
  delete "tasks/:id",      to: "tasks#destroy"

end


# [X] add two routes to handle the creation of a task.
  # [X] One route is there to display the Task form,
  # [X] and another one is there to handle the POST request
# [X] generated when submitting this form.
# [X] Try to use directly the form_with helper in your view.
