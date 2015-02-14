Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2,
    ENV['929853050236-ae5kqi8kk53bcl01ued2bjr6qlpgfshq.apps.googleusercontent.com'],
    ENV['0ZEKfglHdZRmlnssEcLrLFlV']
end
