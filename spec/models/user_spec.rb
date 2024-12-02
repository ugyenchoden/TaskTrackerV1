require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'assocations' do
    it { is_expected.to have_one(:profile).dependent(:destroy)}
  end
end
