class Citero
  constructor: (data) ->
    @data = data
    this

  @map: (data) ->
    new @ data
    
  from: (format) ->
	  @fromFormat = format
	  this
    
  to: (format) ->
	  "#{@data} was converted from #{@fromFormat} to #{format}"

root = exports ? window
root.Citero = Citero