# frozen_string_literal: true

RSpec.describe Board do
  describe '#calculate_dimension' do
    subject { described_class.calculate_dimension(input_letter) }

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
