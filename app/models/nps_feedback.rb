class NpsFeedback < ApplicationRecord
  belongs_to :respondent, polymorphic: true
  belongs_to :object, polymorphic: true

  validates :touchpoint, presence: true
end
