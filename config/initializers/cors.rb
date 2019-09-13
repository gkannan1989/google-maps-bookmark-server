# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#   allow do
#     origins '*'

#     resource '*',
#       headers: :any,
#       methods: [:get, :post, :put, :patch, :delete, :options, :head]
#   end
# end
Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins "localhost:3001", "127.0.0.1:3001"
      resource '*', headers: :any, 
      methods: [:get, :put, :delete, :post, :options],
      headers: 'Access-Control-Allow-Origin: *', 
      max_age: 600 
    end
  end

# @note: must be run after initializers/_assets.rb
# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#     allow do
#       origins '*'
  
#       # All asset requests should be to rails prefixed assets paths
#       # serverd from the asset pipeline (e.g.: "/assets/*" by default)
#       resource "*",
#         # Allow any request headers to be sent in the asset request
#         # https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS#Access-Control-Allow-Headers
#         headers: :any,
#         # All asset fetches should be via GET
#         # Support OPTIONS for pre-flight requests
#         # https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS#Preflighted_requests
#         methods: [:get, :post, :put, :patch, :delete, :options, :head]
#     end
#   end