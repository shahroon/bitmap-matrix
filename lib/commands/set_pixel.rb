module Commands
  class SetPixel
    attr_reader :app, :column, :row, :colour
    def initialize(app, column, row, colour)
      @app     = app
      @column = column.to_i - 1
      @row    = row.to_i - 1
      @colour  = colour
    end

    def create; colour_coordinates; end

    private

    def colour_coordinates
      app.image.send(:[]=, row, column, colour)
    end
  end
end