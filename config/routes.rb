Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/name_game_url", to: "games#name_game_method"
  get "/guess_a_number_url/:this_is_the_wildcard", to: "games#guess_a_number_method" #Don't use colon in the actual link!
  get "/counter", to: "games#counter_method"
  get "/guess_a_number_form_url", to: "games#guess_a_number_form_method"
  post "/guess_a_number_result_url", to: "games#guess_a_number_result_method"
end
