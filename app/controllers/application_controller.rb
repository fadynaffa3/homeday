class ApplicationController < ActionController::API
  rescue_from CanCan::AccessDenied do |exception|
    render(json: { errors: [status: 401, title: 'Not Authorized']}, status: 401)
  end

  rescue_from ActionController::ParameterMissing do |exception|
    render(json: { errors: [status: 400, title: 'Bad Request']}, status: 400)
  end
end
