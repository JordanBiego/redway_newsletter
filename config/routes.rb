Rails.application.routes.draw do

  root 'home#index'
  resource 'leads', only: %w[index create]
end
