module Commands
  class Clear
    attr_reader :app

    def initialize(app)
      @app = app
    end

    def create; reset  end

    private

    def reset
      #hash.each { |k, v| hash[k] = Array.new(v.count) {'O'} }
      app.image = []
    end
  end
end