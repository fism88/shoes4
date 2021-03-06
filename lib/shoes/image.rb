require 'shoes/common_methods'

module Shoes
  class Image
    include Shoes::CommonMethods

    attr_reader :parent, :blk, :gui, :app, :hidden
    attr_reader :file_path, :opts

    def initialize(app, parent, file_path, opts = {}, blk = nil)
      @app = app
      @parent = parent
      @file_path = file_path
      @opts = opts
      @blk = blk

      @left = opts[:left] ? opts[:left] : 0
      @top = opts[:top] ? opts[:top] : 0

      @gui = Shoes.configuration.backend_for(self, @parent.gui, blk)
    end
  end
end
