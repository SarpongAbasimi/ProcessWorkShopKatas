require 'scrabble.rb'

RSpec.describe Scrabble do
  
  let(:scrabble){ described_class.new('a')}
  describe 'When pass a letter' do
    it 'converts the letter to uppercase' do
      expect(scrabble.convert_to_upper()).to eq('A')
    end
  end

  describe 'when passed A' do
    context 'when passed one A' do
      it 'returns one' do
        expect(scrabble.score).to eq(1)
      end
    end

    context 'when passed Two A' do
      it 'returns one' do
        scrabble = Scrabble.new('aa')
        expect(scrabble.score).to eq(2)
      end
    end
  end

  describe 'when passed FA' do
    it 'returns 5' do
      scrabble = Scrabble.new('fa')
      expect(scrabble.score).to eq(5)
    end
  end

  describe 'when passed diverse letters' do
    it 'adds them all and returns the right answer' do
      scrabble = Scrabble.new('OXYPHENBUTAZONE')
      expect(scrabble.score).to eq(41)
    end
  end

  describe 'when passed nil' do
    it  'returns 0' do
     scrabble = Scrabble.new(nil)
     expect(scrabble.score).to eq(0)
    end
  end

  describe 'when passed nil' do
    it  'returns 0' do
     scrabble = Scrabble.new('')
     expect(scrabble.score).to eq(0)
    end
  end
end