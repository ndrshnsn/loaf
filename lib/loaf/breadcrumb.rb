module Loaf
  # A container for breadcrumb values
  # @api public
  class Breadcrumb
    attr_reader :name

    attr_reader :path

    attr_reader :frame

    alias url path

    def self.[](*args)
      new(*args)
    end

    def initialize(name, path, current)
      @name = name
      @path = path
      @current = current
      freeze
    end

    def current?
      @current
    end

    def frame?
      @frame = frame
    end

    def to_ary
      [@name, @path, @frame, @current]
    end
    alias to_a to_ary
  end # Breadcrumb
end # Loaf
