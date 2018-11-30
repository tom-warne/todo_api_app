require "rails_helper"

describe TaskSerializer do
  subject { described_class.new(task) }

  describe '#destroyed' do
    subject    { described_class.new(task).destroyed }
    let(:task) { create(:task).destroy }

    it { should be true }
  end
end
