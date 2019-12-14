class NpsFeedback < ApplicationRecord
  belongs_to :respondent, polymorphic: true
  belongs_to :object, polymorphic: true

  validates :touchpoint, presence: true
  validates_numericality_of :score, :only_integer => true, :allow_nil => true,
    :greater_than_or_equal_to => 1,
    :less_than_or_equal_to => 10,
    :message => "can only be whole number between 1 and 10."

  after_create :send_email

  private

  def send_email; end
end
