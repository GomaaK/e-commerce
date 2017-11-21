# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:price_in_cents) }
  it { should validate_presence_of(:description) }

  describe '#save' do
    let(:instance) { build(:product) }

    subject { instance.save }

    it 'returns true' do
      expect(subject).to be(true)
    end

    it 'actually saves the product' do
      expect { subject }.to change { described_class.count }.by(1)
    end
  end
end
