Formats = require('../../src/formats').Formats

PNX = 
  data: ""
  format: Formats.PNX
  toOpenUrl: ""
  toRis: ""
  toRefworksTagged: ""
  toBibtex: ""
  toEasyBib: ""
  toCsl: ""
  toCsf: ""
  
root = exports ? window
root.PNX  = PNX
