require './lib/app/base'
require './lib/commands/list'

class Main
  attr_reader :command

  def initialize
    @command = Commands::List.new(App::Base.new)
  end

  def run(file)
    return puts 'please provide correct file' if file.nil? || !File.exists?(file)

    File.open(file).each { |line| command.create(line.chomp.split) }
  end
end