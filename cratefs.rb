require 'crate_api'
require 'rfuse_ng'
require 'syck'

class CrateFS < RFuse::Fuse

  attr_accessor :config
  attr_accessor :client
  attr_reader :root

  def initialize mnt, kernelopt, libopt, root
    super mnt, kernelopt, libopt
    @root = root
    config = {}
    raise "Your rcfile did not specify a user and pass." if !read_credentials
  end

  def read_credentials
    rcfile = ".cratefsrc"
    f = File.new rcfile
    f = File.new(ENV["HOME"] + File::SEPARATOR + rcfile) if !f.exists?
    config.merge YAML::load_file f
    return true if config["user"] and config["pass"]
    false
  end

  def readdir ctx, path, filler, offset, ffi

  end

  def getattr ctx, path

  end

  def mkdir ctx, path, mode

  end

  def mknod ctx, path, mode, dev

  end

  def open ctx, path, ffi

  end

=begin

  #these two may not be necessary, per the sample.

  def release ctx, path, fi

  end

  def flush ctx, path, fi

  end

=end

  def chmod ctx, path, mode

  end

  def chown ctx, path, uid, gid

  end

  def truncate ctx, path, offset

  end

  def utime ctx, path, actime, modtime

  end

  def unlink ctx, path

  end

  def rmdir ctx, path

  end

  def rename ctx, path, as

  end

  def read ctx, path, size, offset, fi

  end

  def write ctx, path, buf, offset, fi

  end 

  def setxattr ctx, path, name, value, size, flags

  end

  def getxattr ctx, path, name, size

  end

  def listxattr ctx, path, size

  end

  def remotexattr ctx, path, name

  end

  def statfs ctx, path

  end

  def ioctl ctx, path, cmd, arg, ffi, flags, data

  end

  def poll ctx, path, ffi, ph, reventsp

  end

  def init ctx, rfuseconninfo

  end

end
