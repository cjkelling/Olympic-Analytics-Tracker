require 'rails_helper'

describe Olympian, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :sex }
    it { should validate_presence_of :age }
    it { should validate_presence_of :height }
    it { should validate_presence_of :weight }
    it { should validate_presence_of :games }
  end

  describe 'relationships' do
    it { should belong_to :team }
    it { should belong_to :sport }
    it { should have_many :medals }
    it { should have_many :events }
  end
end
