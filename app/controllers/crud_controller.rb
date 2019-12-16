class CrudController < ApplicationController
  include ApiResponses

  load_and_authorize_resource

  def index
    render json: resources
  end

  def show
    render_resource(resource)
  end

  def update
    resource.update_attributes(permitted_params)
    render_resource(resource)
  end

  def create
    resource.save
    render_resource(resource)
  end

  def destroy
    resource.destroy
    render_resource(resource)
  end

  private

  def resources_name
    name = self.class.name.gsub('Controller', '').gsub('::', '_').underscore
    name_parts = name.split('_')
    name_parts.join('_')
  end

  def resource_name
    resources_name.singularize
  end

  def permitted_params
    send("#{resource_name}_params")
  end

  def resource
    instance_variable_get("@#{resource_name}")
  end

  def resources
    instance_variable_get("@#{resources_name}")
  end
end
