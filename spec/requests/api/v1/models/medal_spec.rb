require 'rails_helper'

describe Medal, type: :model do
  describe 'validations' do
    it { should validate_presence_of :medal }
  end

  describe 'relationships' do
    it { should belong_to :olympian }
    it { should belong_to :event }
  end
end
