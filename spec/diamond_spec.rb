# frozen_string_literal: true

RSpec.describe Diamond do
  let(:instance) { described_class.new }

  describe '#build' do
    subject { instance.build(input) }

    context 'when given a valid character' do
      context 'when given a A character' do
        let(:input) { 'A' }

        it { is_expected.to eq("A\n") }
      end

      context 'when given a B character' do
        let(:input) { 'B' }

        it { is_expected.to eq("_A_\nB_B\n_A_\n") }
      end

      context 'when given a C character' do
        let(:input) { 'C' }

        it { is_expected.to eq("__A__\n_B_B_\nC___C\n_B_B_\n__A__\n") }
      end

      context 'when given a J character' do
        let(:input) { 'J' }

        it { is_expected.to eq(<<~EXAMPLE) }
          _________A_________
          ________B_B________
          _______C___C_______
          ______D_____D______
          _____E_______E_____
          ____F_________F____
          ___G___________G___
          __H_____________H__
          _I_______________I_
          J_________________J
          _I_______________I_
          __H_____________H__
          ___G___________G___
          ____F_________F____
          _____E_______E_____
          ______D_____D______
          _______C___C_______
          ________B_B________
          _________A_________
        EXAMPLE
      end
    end

    context 'when input is not valid' do
      let(:error_message) { "Invalid input #{input}" }

      context 'when input is nil' do
        let(:input) { nil }

        it 'raises a ArgumentError with expected message' do
          expect { instance.build(input) }.to raise_error(ArgumentError, error_message)
        end
      end

      context 'when input is a empty string' do
        let(:input) { '' }

        it 'raises a ArgumentError with expected message' do
          expect { instance.build(input) }.to raise_error(ArgumentError, error_message)
        end
      end

      context 'when input is a number' do
        let(:input) { 1 }

        it 'raises a ArgumentError with expected message' do
          expect { instance.build(input) }.to raise_error(ArgumentError, error_message)
        end
      end

      context 'when input is a special character' do
        let(:input) { '@' }

        it 'raises a ArgumentError with expected message' do
          expect { instance.build(input) }.to raise_error(ArgumentError, error_message)
        end
      end
    end
  end
end
