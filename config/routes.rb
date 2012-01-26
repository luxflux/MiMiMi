MiMiMi::Application.routes.draw do

  resources :people do
    resources :quotes, :except => [ :edit, :update ], :shallow => true
  end

  root :to => 'people#index'

end
