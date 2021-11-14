Rails.application.routes.draw do
  root 'palindromes#input'

  get 'palindromes/input'
  get 'palindromes/view'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
