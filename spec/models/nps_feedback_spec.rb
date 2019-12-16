require 'rails_helper'

RSpec.describe NpsFeedback, type: :model do
  describe 'Associations' do
    it { is_expected.to belong_to(:object) }
    it { is_expected.to belong_to(:respondent) }
  end
end
