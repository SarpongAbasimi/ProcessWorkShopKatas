<h1 align='center'>
  Echo Challenge.
</h1>

> Note That I haven't completed the whole challenge. My goal was to learn how to test ``inputs`` and ``outputs`` from the terminal which I have done and here is my reflection.

<img width="738" alt="Screen Shot 2019-06-06 at 13 39 51" src="https://user-images.githubusercontent.com/37377831/59033465-af40ac80-8860-11e9-9d67-6ddc05739e24.png">

#### How To Run This Application.
- ``Fork`` and ``clone `` this ``repo``.
- ``cd`` into ``echo``.
- type ``rspec`` to ``run`` test.
- To interact with ``app`` create a new instance of ``Echo``.
- ``echo`` = ``Echo.new``.
- To say something type ``echo.say_something``.
- This should prompt you to say ``something``.

> That is how far I have gotten with this challenge.

#### Learnings.

I haven't even completed the challenge but I must say that I am impressed with what I have learnt so far. Before now, I had never thought about testing command-line applications, but this challenge gave me the opportunity to learn how to do this.

```ruby

class Echo
  def say_something
    puts 'Say something:'
  end
end

```

> How Do I check that when I run say_something, it puts ``say something:`` to the terminal ?. Well, thanks to ``Jose`` and ``Alice``, I now know how to do this properly. Below is how you would test to see if ``say_something``method displays ``say something:`` to the terminal.

```ruby
RSpec.describe Echo do
  let(:echo) { described_class.new }

  describe '#say_something' do
    it 'displays say something to the console when called' do
      expect { echo.say_something }.to out("Say something:\n").to_stdout
    end
  end
end
```
> Lets add a second method called ``get_user_input`` that gets input from users.

```ruby

class Echo
  def say_something
    puts 'Say something:'
  end

  def get_user_input
    gets.chomp
  end
end

```

> How how do you test the get_user_input ?

```ruby
RSpec.describe Echo do
  let(:echo) { described_class.new }

  describe '#say_something' do
    it 'displays say something to the console when called' do
      expect { echo.say_something }.to out("Say something:\n").to_stdout
    end
  end

  describe '#get_user_input' do
    it 'allows users to input data and returns that data' do
      allow_any_instance_of(Kernel).to receive(:gets).and_return('chris')
      expect(echo.get_user_input).to eq('chris')
    end
  end
end

```

> This is where it gets interesting. Thanks to Alice, I found out that ``puts`` and ``gets`` are all instance of the ``Kernel`` module,in irb type ``method(:puts).owner``. So when I say ``allow_any_instance_of(Kernel).to receive(:gets).and_return('chris')``, I pass the name ``chris`` to the gets method which then returns ``chris``.