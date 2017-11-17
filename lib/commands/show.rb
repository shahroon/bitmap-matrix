module Commands
  # This Class finally prints the Matrix.
  class Show
    def initialize(app)
      @app = app
    end

    def create; _display; end

    private

    def _display
      mx = @app.image
      mx.to_readable unless mx.nil?
    end
  end
end

# This function is to make Matrix readable, instead of this,
# Matrix[[0, 0, 0, 0, 0], [0, 0, Z, Z, Z], [A, W, 0, 0, 0], [0, W, 0, 0, 0], [0, W, 0, 0, 0], [0, W, 0, 0, 0]]
class Matrix
  def to_readable
    i = 0
    self.each do |number|
      print number.to_s
      i+= 1
      if i == self.column_size
        print "\n"
        i = 0
      end
    end
  end
end