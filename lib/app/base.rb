# This class will control the Bitmap's base.
module App
  class Base
    attr_accessor :image
    attr_reader   :app, :row, :column, :colour

    def initialize
      @image = nil
    end
  end
end