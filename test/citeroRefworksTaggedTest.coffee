Citero = require('../src/citero').Citero
Formats = require('../src/formats').Formats 
chai = require 'chai'
chai.should()

RefworksTagged = require('./helpers/refworksTagged').RefworksTagged

describe "Citero mapping", ->
  it "should convert RefworksTagged data to OpenURL", ->
    Citero.map(RefworksTagged.data).from(RefworksTagged.format).to(Formats.OPENURL).should.equal(RefworksTagged.toOpenUrl)
  it "should convert RefworksTagged data to RIS", ->
    Citero.map(RefworksTagged.data).from(RefworksTagged.format).to(Formats.RIS).should.equal(RefworksTagged.toRis)
  it "should convert RefworksTagged data to Refworks Tagged", ->
    Citero.map(RefworksTagged.data).from(RefworksTagged.format).to(Formats.REFWORKS_TAGGED).should.equal(RefworksTagged.toRefworksTagged)
  it "should convert RefworksTagged data to bibtex", ->
    Citero.map(RefworksTagged.data).from(RefworksTagged.format).to(Formats.BIBTEX).should.equal(RefworksTagged.toBibtex)
  it "should convert RefworksTagged data to easybib", ->
    Citero.map(RefworksTagged.data).from(RefworksTagged.format).to(Formats.EASYBIB).should.equal(RefworksTagged.toEasyBib)
  it "should convert RefworksTagged data to csl", ->
    Citero.map(RefworksTagged.data).from(RefworksTagged.format).to(Formats.CSL).should.equal(RefworksTagged.toCsl)
  it "should convert RefworksTagged data to csf", ->
    Citero.map(RefworksTagged.data).from(RefworksTagged.format).to(Formats.CSF).should.equal(RefworksTagged.toCsf)