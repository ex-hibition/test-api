Rails.application.routes.draw do
  root 'calendars#index'
  get 'calendars/index'
  get 'calendars/show/:key', to: 'calendars#show'
end
