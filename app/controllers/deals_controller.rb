class DealsController < CrudController
  private

  def deal_params
    params.require(:deal).permit(:property_id, :realtor_id)
  end
end
