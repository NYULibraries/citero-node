Citero = require('../lib/citero').Citero
Formats = require('../lib/formats').Formats 
chai = require 'chai'
chai.should()

OpenURL = require('./helpers/openURL').OpenURL

describe "Citero mapping", ->
  it "should convert OpenURL data to OpenURL", ->
    Citero.map(OpenURL.data).from(OpenURL.format).to(Formats.OPENURL).should.equal(OpenURL.toOpenUrl)
  it "should convert OpenURL data to RIS", ->
    Citero.map(OpenURL.data).from(OpenURL.format).to(Formats.RIS).should.equal(OpenURL.toRis)
  it "should convert OpenURL data to Refworks Tagged", ->
    Citero.map(OpenURL.data).from(OpenURL.format).to(Formats.REFWORKS_TAGGED).should.equal(OpenURL.toRefworksTagged)
  it "should convert OpenURL data to bibtex", ->
    Citero.map(OpenURL.data).from(OpenURL.format).to(Formats.BIBTEX).should.equal(OpenURL.toBibtex)
  it "should convert OpenURL data to easybib", ->
    Citero.map(OpenURL.data).from(OpenURL.format).to(Formats.EASYBIB).should.equal(OpenURL.toEasyBib)
  it "should convert OpenURL data to csl", ->
    Citero.map(OpenURL.data).from(OpenURL.format).to(Formats.CSL).should.equal(OpenURL.toCsl)
  it "should convert OpenURL data to csf", ->
    Citero.map(OpenURL.data).from(OpenURL.format).to(Formats.CSF).should.equal(OpenURL.toCsf)