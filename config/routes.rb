Rails.application.routes.draw do
  get 'people/index'
  root 'csv_import#new'
  post 'csv_import/create'
  # post '/import_csv', to: 'csv_import#import', as: 'import_csv'
end
