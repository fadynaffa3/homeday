class ApplicationController < ActionController::API
  rescue_from CanCan::AccessDenied do |exception|
    render(json: { errors: [status: 401, title: 'Not Authorized']}, status: 401)
  end
end
