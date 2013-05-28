DeviseStackoverflow::Application.routes.draw do

  devise_for :users
  authenticated :user do
    root to: "home#home"
  end
  root :to => "home#index"
end
