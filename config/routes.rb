Rails.application.routes.draw do
  devise_for :users,
             controllers: { sessions: 'users/sessions', registrations: 'users/registrations',
                            passwords: 'users/passwords' }
  root 'home#index'
  resource 'leads', only: %w[index create]
  get 'admin', to: 'users#index'
  get 'download_leads', to: 'users#download_leads'
end
