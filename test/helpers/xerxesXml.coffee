Formats = require('../../src/formats').Formats 

XerxesXML = 
  data: ""
  format: Formats.XERXES_XML
  toOpenUrl: ""
  toRis: ""
  toRefworksTagged: ""
  toBibtex: ""
  toEasyBib: ""
  toCsl: ""
  toCsf: ""
  
root = exports ? window
root.XerxesXML  = XerxesXML
