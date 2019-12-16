module JwtHelper
  def headers_generator(user)
    Devise::JWT::TestHelpers.auth_headers({}, user)
  end
end
