require "pipeable/version"

module Pipeable
  def pipe(&block)
    yield self
  end
end
