module Commands
  class DrawHorizontal

    attr_reader :app, :column_one, :column_two, :row, :colour
    def initialize(app, column_one, column_two, row, colour)
      @app        = app
      @column_one = column_one.to_i - 1
      @column_two = column_two.to_i - 1
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