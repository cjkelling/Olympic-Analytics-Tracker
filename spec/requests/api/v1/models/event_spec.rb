require 'rails_helper'

describe Event, type: :model do
  describe 'validations' do
    it { should validate_presence_of :event }
  end

  describe 'relationships' do
    it { should belong_to :sport }
    it { should have_many :medals }
    it { should have_many :olympians }
  end
end
