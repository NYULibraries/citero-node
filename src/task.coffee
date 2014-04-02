class Task
    constructor: (@name) ->
      @status = 'incomplete'
      
root = exports ? window
root.Task = Task