# frozen_string_literal: true

RSpec.describe Line do
  describe '#build' do
    subject { described_class.build(input_letter, current_letter) }

    context 'when input letter is an A character' do
      let(:input_letter) { 'A' }

      context 'when current letter is an A character' do
        let(:current_letter) { 'A' }

        it { is_expected.to eq("A\n") }
      end
    end

    context 'when input letter is an B character' do
      let(:input_letter) { 'B' }

      context 'when current letter is an A character' do
        let(:current_letter) { 'A' }

        it { is_expected.to eq("_A_\n") }
      end

      context 'when current letter is an B character' do
        let(:current_letter) { 'B' }

        it { is_expected.to eq("B_B\n") }
      end
    end

    context 'when input letter is an C character' do
      let(:input_letter) { 'C' }

      context 'when current letter is an A character' do
        let(:current_letter) { 'A' }

        it { is_expected.to eq("__A__\n") }
      end

      context 'when current letter is an B character' do
        let(:current_letter) { 'B' }

        it { is_expected.to eq("_B_B_\n") }
      end

      context 'when current letter is an C character' do
        let(:current_letter) { 'C' }

        it { is_expected.to eq("C___C\n") }
      end
    end
  end
end
