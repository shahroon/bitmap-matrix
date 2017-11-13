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
      Commands::Show.new(app).create
    end 
  end
end