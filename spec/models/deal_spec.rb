require 'rails_helper'

RSpec.describe Deal, type: :model do
  describe 'Associations' do
    it { is_expected.to belong_to(:property) }
    it { is_expected.to belong_to(:realtor) }
  end

  describe 'Validations' do
    let(:realtor) { Fabricate(:realtor) }
    let(:seller) { Fabricate(:seller) }
    let(:property) { Fabricate(:property, owner: seller) }

    subject { Fabricate(:deal, property: property, realtor: realtor) }

    it 'should validate uniquensee of property/realtor' do
      is_expected.to validate_uniqueness_of(:property_id).scoped_to(:realtor_id)
    end
  end
end
