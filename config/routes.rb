Rails.application.routes.draw do |map|
    get "/directory" => 'directories#index'
end
