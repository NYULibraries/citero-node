class Citero
  constructor: (data) ->
    java = require("java")
    java.classpath.push("citero.jar")
    @cite = java.import("edu.nyu.library.citero.Citero")
    @cite = @cite.mapSync(data)
    this

  @map: (data) ->
    new @ data
    
  from: (format) ->
    @cite.fromSync(format)
    this
    
  to: (format) ->
	  @cite.toSync(format)

root = exports ? window
root.Citero = Citero