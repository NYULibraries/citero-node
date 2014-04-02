InputFormats = require('../../src/inputFormats').InputFormats 

XerxesXML = 
  data: ""
  format: InputFormats.XERXES_XML
  toOpenUrl: ""
  toRis: ""
  toRefworksTagged: ""
  toBibtex: ""
  toEasyBib: ""
  toCsl: ""
  toCsf: ""
  
root = exports ? window
root.XerxesXML  = XerxesXML
