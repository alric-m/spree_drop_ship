Spree::Core::Engine.add_routes do

  namespace :admin do
    resource :drop_ship_settings
    resources :shipments
    resources :suppliers
  end

  if Rails.env.development?
    default_url_options :host => "localhost:3000"
  elsif Rails.env.production?
    default_url_options :host => "nedgis.heroku.com"
  end

end
