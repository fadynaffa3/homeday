class ApplicationController < ActionController::API
  rescue_from CanCan::AccessDenied do |exception|
    render(json: { errors: [status: 401, title: 'Not Authorized']}, status: 401)
  end

  def render_resources(resources)
    render json: resources
  end

  def render_resource(resource)
    if resource.errors.empty?
      render json: resource
    else
      validation_error(resource)
    end
  end

  def validation_error(resource)
    render json: {
      errors: [
        {
          status: '400',
          title: 'Bad Request',
          detail: resource.errors,
          code: '100'
        }
      ]
    }, status: :bad_request
  end
end
