require_relative 'spec_helper'

describe CardSet do
  describe '#valid?' do
    it 'sees valid set' do
      expect(CardSet.new(Instruction::ValidSet).valid?).to eq true
    end

    it 'sees invalid set' do
      expect(CardSet.new(Instruction::InvalidSet).valid?).to eq false
    end
  end
end
