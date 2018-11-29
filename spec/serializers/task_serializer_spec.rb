require "rails_helper"

describe TaskSerializer do
  subject { described_class.new(task) }

  describe '#destroyed' do
    let(:task) { create(:task).destroy }

    it { is_expected.to be true }
  end
end
