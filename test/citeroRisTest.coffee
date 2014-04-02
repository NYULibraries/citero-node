Citero = require('../src/citero').Citero
OutputFormats = require('../src/outputFormats').OutputFormats 
RIS = require('./ris').RIS
chai = require 'chai'
chai.should()
describe "Citero mapping", ->
  it "should convert RIS data to OpenURL", ->
    Citero.map(RIS.data).from("RIS").to(OutputFormats.OPENURL).should.equal(RIS.toOpenUrl)
  it "should convert RIS data to RIS", ->
    Citero.map(RIS.data).from("RIS").to(OutputFormats.RIS).should.equal(RIS.toRis)
  it "should convert RIS data to Refworks Tagged", ->
    Citero.map(RIS.data).from("RIS").to(OutputFormats.REFWORKS_TAGGED).should.equal(RIS.toRefworksTagged)
  it "should convert RIS data to bibtex", ->
    Citero.map(RIS.data).from("RIS").to(OutputFormats.BIBTEX).should.equal(RIS.toBibtex)
  it "should convert RIS data to easybib", ->
    Citero.map(RIS.data).from("RIS").to(OutputFormats.EASYBIB).should.equal(RIS.toEasyBib)
  it "should convert RIS data to csl", ->
    Citero.map(RIS.data).from("RIS").to(OutputFormats.CSL).should.equal(RIS.toCsl)
  it "should convert RIS data to csf", ->
    Citero.map(RIS.data).from("RIS").to(OutputFormats.CSF).should.equal(RIS.toCsf)