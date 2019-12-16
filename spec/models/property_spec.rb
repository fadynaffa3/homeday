require 'rails_helper'

RSpec.describe Property, type: :model do
  describe 'Associations' do
    it { is_expected.to belong_to(:owner) }
  end
end
