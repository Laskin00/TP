Rails.application.routes.draw do
  get 'sums' => 'sums#sums'
  post 'sums' => 'sums#create'
  get 'intervals' => 'intervals#intervals'
  post 'filters' => 'filters#filters'

end
