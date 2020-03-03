require 'rails_helper'

describe Team, type: :model do
  describe 'validations' do
    it { should validate_presence_of :team }
  end

  describe 'relationships' do
    it { should have_many :olympians }
  end
end
