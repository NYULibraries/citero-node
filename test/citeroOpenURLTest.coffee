Citero = require('../src/citero').Citero
OutputFormats = require('../src/outputFormats').OutputFormats 
chai = require 'chai'
chai.should()

OpenURL = require('./helpers/openURL').OpenURL

describe "Citero mapping", ->
  it "should convert OpenURL data to OpenURL", ->
    Citero.map(OpenURL.data).from(OpenURL.format).to(OutputFormats.OPENURL).should.equal(OpenURL.toOpenUrl)
  it "should convert OpenURL data to RIS", ->
    Citero.map(OpenURL.data).from(OpenURL.format).to(OutputFormats.RIS).should.equal(OpenURL.toRis)
  it "should convert OpenURL data to Refworks Tagged", ->
    Citero.map(OpenURL.data).from(OpenURL.format).to(OutputFormats.REFWORKS_TAGGED).should.equal(OpenURL.toRefworksTagged)
  it "should convert OpenURL data to bibtex", ->
    Citero.map(OpenURL.data).from(OpenURL.format).to(OutputFormats.BIBTEX).should.equal(OpenURL.toBibtex)
  it "should convert OpenURL data to easybib", ->
    Citero.map(OpenURL.data).from(OpenURL.format).to(OutputFormats.EASYBIB).should.equal(OpenURL.toEasyBib)
  it "should convert OpenURL data to csl", ->
    Citero.map(OpenURL.data).from(OpenURL.format).to(OutputFormats.CSL).should.equal(OpenURL.toCsl)
  it "should convert OpenURL data to csf", ->
    Citero.map(OpenURL.data).from(OpenURL.format).to(OutputFormats.CSF).should.equal(OpenURL.toCsf)