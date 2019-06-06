require 'echo'

RSpec.describe Echo do

  let(:echo) { described_class.new }
  let(:user_input) { "I want food" }

  describe '#say_something' do 
    it 'displays say something when to the user when called' do
      allow_any_instance_of(Kernel).to receive(:gets).and_return(user_input)
      expect(STDOUT).to receive(:puts).with("Say something:")
      allow(STDOUT).to receive(:puts).with(user_input)
      echo.say_something
    end

    it 'allows users to input what they would like to say' do
      allow_any_instance_of(Kernel).to receive(:gets).and_return('class')
      allow(STDOUT).to receive(:puts)
      expect(echo.say_something).to eq('class')
    end
  end

  describe '#user_input' do
    it 'allows users to input something' do
      allow_any_instance_of(Kernel).to receive(:gets).and_return(user_input)
      expect(echo.user_input).to eq("I want food")
    end
  end
end