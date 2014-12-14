class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

def out
  @out ||= Output.new
end

Given /^I am not yet playing$/ do end

When /^I start a new game$/ do
  Codebreaker::Game.new(out).start('1234')
end

Then /^I should see '([^']*)'$/ do |message|
  expect(out.messages).to include(message)
end

Given /^the secret code is '(\d{4})'$/ do |secret|
  @game = Codebreaker::Game.new(out)
  @game.start(secret)
end

When /^I guess '(\d{4})'$/ do |guess|
  @game.guess(guess)
end

Then /^the mark should be '([+-]{,4})'$/ do |mark|
  expect(out.messages).to include(mark)
end
