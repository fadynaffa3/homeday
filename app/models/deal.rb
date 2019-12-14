class Deal < ApplicationRecord
  belongs_to :property
  belongs_to :realtor

  after_create :send_nps

  private

  def send_nps
    NpsFeedback.create(touchpoint: 'realtor_feedback', object: realtor, respondent: property.owner)
  end
end
