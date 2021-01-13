# frozen_string_literal: true

RSpec.describe Board do
  let(:instance) { described_class.new(input_letter) }

  describe '#calculate_dimension' do
    subject { instance.calculate_dimension }

    context 'when input letter is an A' do
      let(:input_letter) { 'A' }

      it { is_expected.to eq(1) }
    end

    context 'when input letter is an B' do
      let(:input_letter) { 'B' }

      it { is_expected.to eq(3) }
    end

    context 'when input letter is an C' do
      let(:input_letter) { 'C' }

      it { is_expected.to eq(5) }
    end

    context 'when input letter is an Z' do
      let(:input_letter) { 'Z' }

      it { is_expected.to eq(51) }
    end
  end
end
