Rails.application.routes.draw do
  root 'pages#home'
  get '/lottery' => 'pages#lottery' 
  get '/bottles' => 'pages#bottles'
  get '/employees' => 'employees#workers'
  post '/save' => 'employees#save'
  get '/guess/:guess' => 'pages#guess'
  get '/guess_form' => 'pages#guess_form'
  post '/guess_result' => 'pages#guess_result'

end
