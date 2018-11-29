require "rails_helper"

describe TagTask do
  it { is_expected.to belong_to :tag  }
  it { is_expected.to belong_to :task }
end
