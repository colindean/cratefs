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
  include XattrObject
  #wrapper class

  attr_accessor :subdirs
  attr_accessor :name, :mode, :actime, :modtime, :uid, :gid
  attr_accessor :cratedir
  
  def initialize name, mode, is_root=false
    @subdirs = []
    @root = is_root
    @uid = @gid = @actime = @modtime = 0
    @xattr = Hash.new
    @name = name
    @mode = mode | (4 << 12) #this apparently must be done manually
  end

  def wrap crate_object
    @cratedir = crate_object
  end

  def root?
    @root
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
