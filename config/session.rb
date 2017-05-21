session_options = {
  key: ENV['SESSION_ID'],
  path: "/",
  expire_after: 2592000,
  secret: ENV['SESSION_SECRET']
}
if ENV["RACK_ENV"] == "production"
  session_options.merge!(domain: "#{ENV['SESSION_DOMAIN']}")
end
SESSION_OPTIONS = session_options
