Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins CORS_ALLOWED_DOMAINS
   
    resource "*", headers: :any, methods: %i[get post patch put]
  end
end
