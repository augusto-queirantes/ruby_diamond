RSpec.describe Letter do
  let(:instance) { described_class.new(input_letter) }

  describe "#next" do
    subject { instance.next }

    context "when input letter is an A" do
      let(:input_letter) { "A" }

      context "when called once" do
        it "returns A" do
          expect(instance.next).to eq("A")
        end
      end
    end

    context "when input letter is an B" do
      let(:input_letter) { "B" }

      context "when called once" do
        it "returns A" do
          expect(instance.next).to eq("A")
        end
      end

      context "when called twice" do
        it "returns expected values" do
          expect(instance.next).to eq("A")
          expect(instance.next).to eq("B")
        end
      end

      context "when called three times" do
        it "returns expected values" do
          expect(instance.next).to eq("A")
          expect(instance.next).to eq("B")
          expect(instance.next).to eq("A")
        end
      end
    end
  end
end
