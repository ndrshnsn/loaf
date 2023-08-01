module Loaf
  # A container for breadcrumb values
  # @api public
  class Breadcrumb
    attr_reader :name

    attr_reader :path

    attr_reader :frame

    attr_reader :turbo_disabled

    alias url path

    def self.[](*args)
      new(*args)
    end

    def initialize(name, path, current, frame, turbo_disabled)
      @name = name
      @path = path
      @current = current
      @frame = frame
      @turbo_disabled = turbo_disabled
      freeze
    end

    def current?
      @current
    end

    def to_ary
      [@name, @path, @current, @frame, @turbo_disabled]
    end
    alias to_a to_ary
  end # Breadcrumb
end # Loaf
