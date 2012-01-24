require 'java'
require 'test/unit'
include Test::Unit::Assertions

require 'rubygems'
require 'rspec'

World do
  extend RSpec::Matchers
end


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
  When "I push an item into the stack"
end

Then /^the stack contains two items$/ do
  @stack.size.should == 2
end

When /^I pop from the stack$/ do
  @popped_item = @stack.pop
end

Then /^I get the same item back$/ do
  @popped_item.should == @item
end

When /^I push "([^"]*)" into the stack$/ do |value|
  @stack.push(value)
end

When /^I pop two values from the stack$/ do
  @value = Array.new
  @value << @stack.pop()
  @value << @stack.pop()
end

Then /^I should get "([^"]*)"$/ do |arg1|
  assert_equal arg1, @value.join(",")
end
