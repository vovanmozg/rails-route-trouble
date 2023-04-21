Rails.application.routes.draw do
  scope '(:lang-:country)' do
    get 'page1', to: 'pages#page'
  end

  scope 'subdomain' do
    get 'page2', to: 'pages#page'
  end
end
