Rails.application.routes.draw do
  
  get 'welcome/index'
  # get 'welcome/index'
  root 'welcome#index'

  devise_for :admins
  


  scope '/admin' do
    resources :teachers  
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  get 'subjects/dash_board' => 'subjects#dash_board'
  get 'teachers/dash_board' => 'teachers#dash_board'
  get 'students/dash_board' => 'students#dash_board'

  post 'admins/assign_ranks' => 'admins#assign_ranks'
  
  devise_for :teachers
  resources :teachers
  
  resources :students

  

  resources :subjects

  resources :marks
end

