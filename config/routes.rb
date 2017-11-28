Rails.application.routes.draw do
  root 'calendars#index'
  get 'calendars/index'
  get 'calendars/show/:key', to: 'calendars#show'

  get 'plsqls/sysdate_proc', to: 'plsqls#sysdate_proc'
  get 'plsqls/test_proc/:key', to: 'plsqls#test_proc'
  get 'plsqls/test_func/:key', to: 'plsqls#test_func'
end
