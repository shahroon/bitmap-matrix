module Commands
  class Clear
    attr_reader :app

    def initialize(app)
      @app = app
      @rows = app.image.row_size
      @cols = app.image.column_size
    end

    def create; reset  end

    private

    def reset
      app.image.each_with_index do |e,row,col|
        app.image.send(:[]=, row, col, 0)
      end  
      puts app.image
    end

    # def reset_rows
    #   i = 1
    #   (1..rows).each do |row|

    #     app.image.send(:[]=, row, column, 0)
    #   end
    # end
    
    # def reset_cols
    #   (1..cols).each do |column|
    #     app.image.send(:[]=, row, column, 0)
    #   end
    # end  
  end
end