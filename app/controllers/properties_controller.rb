class PropertiesController < CrudController
  private

  def property_params
    params.require(:property).permit(:title, :description, :owner_id)
  end
end
