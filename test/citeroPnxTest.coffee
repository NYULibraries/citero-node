Citero = require('../lib/citero').Citero
Formats = require('../lib/citero').Formats 
chai = require 'chai'
chai.should()

PNX = require('./helpers/pnx').PNX

describe "Citero mapping", ->
  it "should convert PNX data to OpenURL", ->
    Citero.map(PNX.data).from(PNX.format).to(Formats.OPENURL).should.equal(PNX.toOpenUrl)
  it "should convert PNX data to RIS", ->
    Citero.map(PNX.data).from(PNX.format).to(Formats.RIS).should.equal(PNX.toRis)
  it "should convert PNX data to Refworks Tagged", ->
    Citero.map(PNX.data).from(PNX.format).to(Formats.REFWORKS_TAGGED).should.equal(PNX.toRefworksTagged)
  it "should convert PNX data to bibtex", ->
    Citero.map(PNX.data).from(PNX.format).to(Formats.BIBTEX).should.equal(PNX.toBibtex)
  it "should convert PNX data to easybib", ->
    Citero.map(PNX.data).from(PNX.format).to(Formats.EASYBIB).should.equal(PNX.toEasyBib)
  it "should convert PNX data to csl", ->
    Citero.map(PNX.data).from(PNX.format).to(Formats.CSL).should.equal(PNX.toCsl)
  it "should convert PNX data to csf", ->
    Citero.map(PNX.data).from(PNX.format).to(Formats.CSF).should.equal(PNX.toCsf)