#!/usr/bin/env ruby 

require File.join(File.dirname(__FILE__), 'set_up_rubygems_path')

require 'erector'

class Hello < Erector::Widget
  def content
    div do
      text "Hello, "
      b @target, :class => 'big'
      text "!"
    end
  end
end

puts Hello.new(:target => 'world').to_s