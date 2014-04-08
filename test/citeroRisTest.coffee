Citero = require('../lib/citero').Citero
Formats = require('../lib/citero').Formats
chai = require 'chai'
chai.should()

RIS = require('./helpers/ris').RIS
for ris in RIS
  describe "Citero mapping", ->
    it "should convert RIS data to OpenURL", ->
      Citero.map(ris.data).from(ris.format).to(Formats.OPENURL).should.equal(ris.toOpenUrl)
    it "should convert RIS data to RIS", ->
      Citero.map(ris.data).from(ris.format).to(Formats.RIS).should.equal(ris.toRis)
    it "should convert RIS data to Refworks Tagged", ->
      Citero.map(ris.data).from(ris.format).to(Formats.REFWORKS_TAGGED).should.equal(ris.toRefworksTagged)
    it "should convert RIS data to bibtex", ->
      Citero.map(ris.data).from(ris.format).to(Formats.BIBTEX).should.equal(ris.toBibtex)
    it "should convert RIS data to easybib", ->
      Citero.map(ris.data).from(ris.format).to(Formats.EASYBIB).should.equal(ris.toEasyBib)
    it "should convert RIS data to csl", ->
      Citero.map(ris.data).from(ris.format).to(Formats.CSL).should.equal(ris.toCsl)
    it "should convert RIS data to csf", ->
      Citero.map(ris.data).from(ris.format).to(Formats.CSF).should.equal(ris.toCsf)