require './lib/commands/set'
require './lib/commands/set_pixel'
require './lib/commands/draw_vertical'
require './lib/commands/draw_horizontal'
require './lib/commands/clear'
require './lib/commands/show'
require './lib/invalid_coordinates'

module Commands
  class List < InvalidCoordinates
    attr_reader   :app
    attr_accessor :columns, :rows

    def initialize(app)
      @app = app
    end

    def commands
      {
        I: 'Set',
        L: 'SetPixel',
        V: 'DrawVertical',
        H: 'DrawHorizontal',
        C: 'Clear',
        S: 'Show'
      }
    end

    def create(args)
      k = args.shift.to_sym
      command = commands.has_key?(k)
      puts command
      puts 'Command Not Found' unless command
      err = InvalidCoordinates.new.check_coords(args)
      Commands.const_get(cmds.fetch(k)).new(app, *args).create unless err
    end
    alias_method :cmds, :commands
  end
end
