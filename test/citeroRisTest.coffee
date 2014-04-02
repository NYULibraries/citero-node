Citero = require('../src/citero').Citero
OutputFormats = require('../src/outputFormats').OutputFormats
chai = require 'chai'
chai.should()

RIS = require('./helpers/ris').RIS
for ris in RIS
  describe "Citero mapping", ->
    it "should convert RIS data to OpenURL", ->
      Citero.map(ris.data).from(ris.format).to(OutputFormats.OPENURL).should.equal(ris.toOpenUrl)
    it "should convert RIS data to RIS", ->
      Citero.map(ris.data).from(ris.format).to(OutputFormats.RIS).should.equal(ris.toRis)
    it "should convert RIS data to Refworks Tagged", ->
      Citero.map(ris.data).from(ris.format).to(OutputFormats.REFWORKS_TAGGED).should.equal(ris.toRefworksTagged)
    it "should convert RIS data to bibtex", ->
      Citero.map(ris.data).from(ris.format).to(OutputFormats.BIBTEX).should.equal(ris.toBibtex)
    it "should convert RIS data to easybib", ->
      Citero.map(ris.data).from(ris.format).to(OutputFormats.EASYBIB).should.equal(ris.toEasyBib)
    it "should convert RIS data to csl", ->
      Citero.map(ris.data).from(ris.format).to(OutputFormats.CSL).should.equal(ris.toCsl)
    it "should convert RIS data to csf", ->
      Citero.map(ris.data).from(ris.format).to(OutputFormats.CSF).should.equal(ris.toCsf)