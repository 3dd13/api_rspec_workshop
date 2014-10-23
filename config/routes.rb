Rails.application.routes.draw do
  namespace :api, constraints: { format: 'json' } do
    scope module: 'v1', constraints: ApiConstraints.new(version: 1, default: :true) do
      resources :projects, only: [:show]
    end
  end
end
