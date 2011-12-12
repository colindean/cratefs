module XattrObject

  def listxattr
    list = ""
    @xattr.each {|k,v| list = list + k + "\0" }
    list
  end

  def setxattr name, value, flag
   @xattr[name] = value #TODO: respect flag 
  end

  def getxattr name
    @xattr[name]
  end

  def removexattr name
    @xattr.delete name
  end

end
