require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User validations' do
    subject { build(:user) }
    it 'email presence validation' do
      should validate_presence_of(:email)
    end
    it 'age presence validation' do
      should validate_presence_of(:age)
    end
    it 'password presence validation' do
      should validate_presence_of(:password_digest)
    end
    it 'type presence validation' do
      should validate_presence_of(:type)
    end
    it 'email uniqueness validation' do
      should validate_uniqueness_of(:email)
    end
    it 'email invalid validation' do
      should_not allow_value("test").for(:email)
    end
    it 'integer age only validation' do
      should validate_numericality_of(:age).only_integer
    end
    it 'integer plus 18 validation' do
      should validate_numericality_of(:age).is_greater_than_or_equal_to(18)
    end
    it 'integer minus 100 validation' do
      should validate_numericality_of(:age).is_less_than_or_equal_to(100)
    end
  end
end
