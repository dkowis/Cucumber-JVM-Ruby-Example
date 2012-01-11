require 'java'
require 'test/unit'

require 'rubygems'
require 'rspec'

Given /^an empty stack$/ do
  java_import com.rackspace.example.RackStack

  @stack = RackStack.new
end

When /^I push an item into the stack$/ do
  @item = Object.new
  @stack.push(@item)
end

Then /^the stack contains one item$/ do
  @stack.size.should == 1
end

When /^I push another item into the stack$/ do
  # cannot yet call a stepdef from another like this :(
  #When "I push an item into the stack"

  @stack.push(Object.new)
end

Then /^the stack contains two items$/ do
  @stack.size.should == 2
end

When /^I pop from the stack$/ do
  #pending DSL isn't in the snapshot yet!
  #pending "not done yet!"
  # Express the Regexp above with the code you wish you had
end

Then /^I get the same item back$/ do
  #pending DSL isn't in the snapshot yet!
  #pending
  # Express the Regexp above with the code you wish you had
end
