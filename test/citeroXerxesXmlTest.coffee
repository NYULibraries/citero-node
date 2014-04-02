Citero = require('../src/citero').Citero
OutputFormats = require('../src/outputFormats').OutputFormats 
chai = require 'chai'
chai.should()

XerxesXML = require('./helpers/xerxesXml').XerxesXML

describe "Citero mapping", ->
  it "should convert XerxesXML data to OpenURL", ->
    Citero.map(XerxesXML.data).from(XerxesXML.format).to(OutputFormats.OPENURL).should.equal(XerxesXML.toOpenUrl)
  it "should convert XerxesXML data to RIS", ->
    Citero.map(XerxesXML.data).from(XerxesXML.format).to(OutputFormats.RIS).should.equal(XerxesXML.toRis)
  it "should convert XerxesXML data to Refworks Tagged", ->
    Citero.map(XerxesXML.data).from(XerxesXML.format).to(OutputFormats.REFWORKS_TAGGED).should.equal(XerxesXML.toRefworksTagged)
  it "should convert XerxesXML data to bibtex", ->
    Citero.map(XerxesXML.data).from(XerxesXML.format).to(OutputFormats.BIBTEX).should.equal(XerxesXML.toBibtex)
  it "should convert XerxesXML data to easybib", ->
    Citero.map(XerxesXML.data).from(XerxesXML.format).to(OutputFormats.EASYBIB).should.equal(XerxesXML.toEasyBib)
  it "should convert XerxesXML data to csl", ->
    Citero.map(XerxesXML.data).from(XerxesXML.format).to(OutputFormats.CSL).should.equal(XerxesXML.toCsl)
  it "should convert XerxesXML data to csf", ->
    Citero.map(XerxesXML.data).from(XerxesXML.format).to(OutputFormats.CSF).should.equal(XerxesXML.toCsf)