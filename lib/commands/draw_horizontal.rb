module Commands
  # This will add values (colors) Horizontaly  x-axis
  class DrawHorizontal
    attr_reader :app, :column_one, :column_two, :row, :colour
    def initialize(app, column_one, column_two, row, colour)
      @app        = app
      @column_one = column_one.to_i - 1 # to adjust with index
      @column_two = column_two.to_i - 1 # to adjust with index
      @row        = row.to_i - 1
      @colour     = colour
    end

    def create; colour_horizontal; end

    private

    def colour_horizontal
      (column_one..column_two).each do |column|
        app.image.send(:[]=, row, column, colour)
      end
    end
  end
end