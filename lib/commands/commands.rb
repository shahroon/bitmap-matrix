# Thinking to combine all commands classes into one bigger class
# module Commands
#   class Set
#     attr_reader :app, :columns, :rows

#     def initialize(app, columns, rows)
#       @app     = app
#       @columns = columns.to_i
#       @rows    = rows.to_i
#     end

#     def create; matrix_skeleton; end

#     private

#     def matrix_skeleton 
#       app.image = Matrix.build(rows,columns) {|row,column| 0}
#     end
#   end
# end