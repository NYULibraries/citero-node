java = require("java");
java.classpath.push("citero.jar");
  
Formats = java.import("edu.nyu.library.citero.Formats")

root = exports ? window
root.Formats = Formats  
