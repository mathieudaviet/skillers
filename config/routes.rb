Rails.application.routes.draw do

  get 'test/results', to: 'test#results'

  get 'test/exercise'

  get 'test/instructions'

  get 'test/:company/:id/:key' => 'test#beginning'

  post 'beginningform' => 'test#beginningform'
  
  post '/instructions' => 'test#instructions_next'

  post '/exercise' => 'test#exercise_next'

  post '/createexercices' => 'admin#createexercices'

  post '/modifyexercise' => 'admin#modifyexercisenext'

  get 'admin/createexercise'

  get 'admin/listexercise'

  get 'admin/modifyexercise/:id' => 'admin#modifyexercise'

  get '/trial', to: 'pages#trial'

  get '/contact', to: 'pages#contact'

  get '', to: 'pages#home'

  post '/contact', to: 'pages#sendemail'
  
  post '/trial', to: 'pages#sendtrial'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
