MiMiMi::Application.routes.draw do

  resources :people, :except => [ :edit, :update, :show ] do
    resources :quotes, :except => [ :edit, :update ], :shallow => true
  end

  root :to => 'people#index'

end
