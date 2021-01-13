# frozen_string_literal: true

RSpec.describe InputValidator do
  describe '#validate!' do
    context 'when input is valid' do
      context 'when input is a A character' do
        let(:input) { 'A' }

        it 'does not raise error' do
          expect { described_class.validate!(input) }.not_to raise_error
        end
      end

      context 'when input is a Z character' do
        let(:input) { 'Z' }

        it 'does not raise error' do
          expect { described_class.validate!(input) }.not_to raise_error
        end
      end
    end

    context 'when input is not valid' do
      let(:error_message) { "Invalid input #{input}" }

      context 'when input is nil' do
        let(:input) { nil }

        it 'raises a ArgumentError with expected message' do
          expect { described_class.validate!(input) }.to raise_error(ArgumentError, error_message)
        end
      end

      context 'when input is a empty string' do
        let(:input) { '' }

        it 'raises a ArgumentError with expected message' do
          expect { described_class.validate!(input) }.to raise_error(ArgumentError, error_message)
        end
      end

      context 'when input is a number' do
        let(:input) { 1 }

        it 'raises a ArgumentError with expected message' do
          expect { described_class.validate!(input) }.to raise_error(ArgumentError, error_message)
        end
      end

      context 'when input is a special character' do
        let(:input) { '@' }

        it 'raises a ArgumentError with expected message' do
          expect { described_class.validate!(input) }.to raise_error(ArgumentError, error_message)
        end
      end
    end
  end
end
