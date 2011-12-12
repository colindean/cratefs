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

class CrateFile
  include XattrObject
  #wrapper class

  attr_accessor :cratefile
  attr_accessor :name, :mode, :actime, :modtime, :uid, :gid, :content
  #TODO: move most of these attrs to real methods

  def initialize name, mode, uid, gid
    @actime = @modtime = 0
    @xattr = Hash.new
    @uid = uid
    @gid = gid
    @name = name
    @mode = mode
    @content = ""
  end

  def wrap crate_object
    @cratefile = crate_object
  end

  def size

  end

  def dir_mode
    return (@mode & 170000) >> 12
  end

  def isdir
    false
  end

  def follow path_array
    if path_array.length != 0 then
      raise Errno::ENOTDIR.new
    else
      return self
    end
  end

  def to_s

  end

end
