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
      puts 'Command Not Found' unless command
      if invalid?(args)
        puts 'Please provide coordinates within 1-250 range.'
      else
        Commands.const_get(cmds.fetch(k)).new(app, *args).create
      end  
    end
    alias_method :cmds, :commands

    def invalid?(args)
      invalid = InvalidCoordinates.new.filter_args(args)
      invalid.size > 0
    end  
  end
end
