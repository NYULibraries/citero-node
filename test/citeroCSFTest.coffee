Citero = require('../src/citero').Citero
OutputFormats = require('../src/outputFormats').OutputFormats 
chai = require 'chai'
chai.should()

CSF = require('./helpers/csf').CSF

describe "Citero mapping", ->
  it "should convert CSF data to OpenURL", ->
    Citero.map(CSF.data).from(CSF.format).to(OutputFormats.OPENURL).should.equal(CSF.toOpenUrl)
  it "should convert CSF data to RIS", ->
    Citero.map(CSF.data).from(CSF.format).to(OutputFormats.RIS).should.equal(CSF.toRis)
  it "should convert CSF data to Refworks Tagged", ->
    Citero.map(CSF.data).from(CSF.format).to(OutputFormats.REFWORKS_TAGGED).should.equal(CSF.toRefworksTagged)
  it "should convert CSF data to bibtex", ->
    Citero.map(CSF.data).from(CSF.format).to(OutputFormats.BIBTEX).should.equal(CSF.toBibtex)
  it "should convert CSF data to easybib", ->
    Citero.map(CSF.data).from(CSF.format).to(OutputFormats.EASYBIB).should.equal(CSF.toEasyBib)
  it "should convert CSF data to csl", ->
    Citero.map(CSF.data).from(CSF.format).to(OutputFormats.CSL).should.equal(CSF.toCsl)
  it "should convert CSF data to csf", ->
    Citero.map(CSF.data).from(CSF.format).to(OutputFormats.CSF).should.equal(CSF.toCsf)