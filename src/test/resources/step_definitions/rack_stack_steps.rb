require 'java'
require 'test/unit'

include Test::Unit::Assertions

Given /^an empty stack$/ do
  java_import com.rackspace.example.RackStack

  @stack = RackStack.new
end

When /^I push an item into the stack$/ do
  Kernel.puts "Pushing item into the stack"
  @item = Object.new
  @stack.push(@item)
end

Then /^the stack contains one item$/ do
  assert_equal(1, @stack.size)
end

When /^I push another item into the stack$/ do
  # cannot yet call a stepdef from another like this :(
  #When "I push an item into the stack"

  @stack.push(Object.new)
end

Then /^the stack contains two items$/ do
  assert_equal 2, @stack.size
end