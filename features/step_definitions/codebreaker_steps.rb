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
  Codebreaker::Game.new(out).start(secret)
end

When /^I guess '(\d+)'$/ do |arg1|
  pending
end

Then /^the mark should be ''$/ do
  pending
end

Then /^the mark should be '\+'$/ do
  pending
end

Then /^the mark should be '\-'$/ do
  pending
end

Then /^the mark should be '\+\+'$/ do
  pending
end

Then /^the mark should be '\+\-'$/ do
  pending
end

Then /^the mark should be '\-\-'$/ do
  pending
end

Then /^the mark should be '\+\+\+'$/ do
  pending
end

Then /^the mark should be '\+\+\-'$/ do
  pending
end

Then /^the mark should be '\+\-\-'$/ do
  pending
end

Then /^the mark should be '\-\-\-'$/ do
  pending
end

Then /^the mark should be '\+\+\+\+'$/ do
  pending
end

Then /^the mark should be '\+\+\+\-'$/ do
  pending
end

Then /^the mark should be '\+\+\-\-'$/ do
  pending
end

Then /^the mark should be '\+\-\-\-'$/ do
  pending
end
