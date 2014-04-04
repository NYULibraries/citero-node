Citero = require('../src/citero').Citero
Formats = require('../src/formats').Formats 
chai = require 'chai'
chai.should()

XerxesXML = require('./helpers/xerxesXml').XerxesXML

describe "Citero mapping", ->
  it "should convert XerxesXML data to OpenURL", ->
    Citero.map(XerxesXML.data).from(XerxesXML.format).to(Formats.OPENURL).should.equal(XerxesXML.toOpenUrl)
  it "should convert XerxesXML data to RIS", ->
    Citero.map(XerxesXML.data).from(XerxesXML.format).to(Formats.RIS).should.equal(XerxesXML.toRis)
  it "should convert XerxesXML data to Refworks Tagged", ->
    Citero.map(XerxesXML.data).from(XerxesXML.format).to(Formats.REFWORKS_TAGGED).should.equal(XerxesXML.toRefworksTagged)
  it "should convert XerxesXML data to bibtex", ->
    Citero.map(XerxesXML.data).from(XerxesXML.format).to(Formats.BIBTEX).should.equal(XerxesXML.toBibtex)
  it "should convert XerxesXML data to easybib", ->
    Citero.map(XerxesXML.data).from(XerxesXML.format).to(Formats.EASYBIB).should.equal(XerxesXML.toEasyBib)
  it "should convert XerxesXML data to csl", ->
    Citero.map(XerxesXML.data).from(XerxesXML.format).to(Formats.CSL).should.equal(XerxesXML.toCsl)
  it "should convert XerxesXML data to csf", ->
    Citero.map(XerxesXML.data).from(XerxesXML.format).to(Formats.CSF).should.equal(XerxesXML.toCsf)