json.extract! ml_portfolio, :id, :title, :subtitle, :type, :language, :framework, :libraries, :description, :url, :photo, :created_at, :updated_at
json.url ml_portfolio_url(ml_portfolio, format: :json)
