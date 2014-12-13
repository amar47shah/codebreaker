Given /^I am not yet playing$/ do
end

When /^I start a new game$/ do
  Codebreaker::Game.new.start
end

Then /^I should see 'Welcome to Codebreaker!'$/ do
  pending
end

Then /^I should see 'Enter guess:'$/ do
  pending
end

Given /^the secret code is '(\d+)'$/ do |arg1|
  pending
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
