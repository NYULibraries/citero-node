InputFormats = require('../../src/inputFormats').InputFormats 

PNX = 
  data: ""
  format: InputFormats.PNX
  toOpenUrl: ""
  toRis: ""
  toRefworksTagged: ""
  toBibtex: ""
  toEasyBib: ""
  toCsl: ""
  toCsf: ""
  
root = exports ? window
root.PNX  = PNX
