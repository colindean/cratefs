=begin
cratefs
=======

A FUSE filesystem for Crate written in Ruby

Copyright 2011 Colin Dean

Crate is copyright Crate, LLC.
http://letscrate.com
=end

#inspiration:
#https://github.com/tddium/rfuse-ng/blob/master/sample/test-ruby.rb

class CrateDir < Hash
  #wrapper class
  
  def initialize name, mode

  end

  def listxattr

  end

  def setxattr name, value, flag

  end

  def getxattr name

  end

  def removexattr name

  end

  def dir_mode

  end

  def size

  end

  def isdir
    true
  end

  def insert_obj obj, path

  end

  def remove_obj path

  end

  def search path

  end

  def follow path_array

  end

  def to_s

  end
end
