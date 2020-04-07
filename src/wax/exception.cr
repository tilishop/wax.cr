struct Wax
  class Exception < Exception; end

  class FileTypeNotSupportedException < Wax::Exception; end

  class FileMissingException < Wax::Exception; end
end
