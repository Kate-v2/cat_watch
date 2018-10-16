Rails.application.routes.draw do

  resources :owners, only: [:index] do
    resources :cats,   only: [:index, :show]
  end

  namespace :wild do
	 resources :cats, only: [:index, :show]
	end

end
