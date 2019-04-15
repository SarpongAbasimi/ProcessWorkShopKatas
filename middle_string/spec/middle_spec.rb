require 'middle'

RSpec.describe MiddleString do
  let(:middle_string) { described_class.new }

  describe '#get_middle' do
    context 'Return the middle character' do
      it 'when string length is odd' do
        user_inpput = 'testing'
        expect(middle_string.get_middle(user_inpput)).to eq('t')
      end
    end
    context 'Returns the two middle characters' do
      it 'when the string length is even' do
        user_inpput = 'middle'
        expect(middle_string.get_middle(user_inpput)).to eq('dd')
      end
    end
  end
end
