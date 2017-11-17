module Commands
  # This will add values (colors) verticaly y-axis
  class DrawVertical

    attr_reader :app, :column, :row_one, :row_two, :colour

    def initialize(app, column, row_one, row_two, colour)
      @app     = app
      @column  = column.to_i - 1 
      @row_one = row_one.to_i - 1
      @row_two = row_two.to_i - 1
      @colour  = colour
    end

    def create; colour_vertical; end

    private

    def colour_vertical      
      (row_one..row_two).each do |row|
        app.image.send(:[]=, row, column, colour)
      end
    end
  end
end