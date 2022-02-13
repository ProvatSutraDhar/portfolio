json.extract! web_portfolio, :id, :title, :subtitle, :type, :client_side, :server_side, :database, :description, :url, :photo, :created_at, :updated_at
json.url web_portfolio_url(web_portfolio, format: :json)
