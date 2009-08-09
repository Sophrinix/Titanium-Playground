#!/usr/bin/env ruby

require File.join(File.dirname(__FILE__), 'set_up_rubygems_path')
require "active_record"
ActiveRecord::Base.establish_connection(:adapter => 'mysql', :username=> 'root', :password => '', :database => 'dz_development')

class User < ActiveRecord::Base
end


puts User.first.attributes.keys.sort.join(', ')