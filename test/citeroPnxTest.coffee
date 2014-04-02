Citero = require('../src/citero').Citero
OutputFormats = require('../src/outputFormats').OutputFormats 
chai = require 'chai'
chai.should()

PNX = require('./helpers/pnx').PNX

describe "Citero mapping", ->
  it "should convert PNX data to OpenURL", ->
    Citero.map(PNX.data).from(PNX.format).to(OutputFormats.OPENURL).should.equal(PNX.toOpenUrl)
  it "should convert PNX data to RIS", ->
    Citero.map(PNX.data).from(PNX.format).to(OutputFormats.RIS).should.equal(PNX.toRis)
  it "should convert PNX data to Refworks Tagged", ->
    Citero.map(PNX.data).from(PNX.format).to(OutputFormats.REFWORKS_TAGGED).should.equal(PNX.toRefworksTagged)
  it "should convert PNX data to bibtex", ->
    Citero.map(PNX.data).from(PNX.format).to(OutputFormats.BIBTEX).should.equal(PNX.toBibtex)
  it "should convert PNX data to easybib", ->
    Citero.map(PNX.data).from(PNX.format).to(OutputFormats.EASYBIB).should.equal(PNX.toEasyBib)
  it "should convert PNX data to csl", ->
    Citero.map(PNX.data).from(PNX.format).to(OutputFormats.CSL).should.equal(PNX.toCsl)
  it "should convert PNX data to csf", ->
    Citero.map(PNX.data).from(PNX.format).to(OutputFormats.CSF).should.equal(PNX.toCsf)