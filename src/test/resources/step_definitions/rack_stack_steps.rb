require 'java'

Given /^an empty stack$/ do
  java_import com.rackspace.example.RackStack

  @stack = RackStack.new
end

