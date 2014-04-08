// Generated by CoffeeScript 1.7.1
(function() {
  var Citero, Formats, PNX, chai;

  Citero = require('../lib/citero').Citero;

  Formats = require('../lib/formats').Formats;

  chai = require('chai');

  chai.should();

  PNX = require('./helpers/pnx').PNX;

  describe("Citero mapping", function() {
    it("should convert PNX data to OpenURL", function() {
      return Citero.map(PNX.data).from(PNX.format).to(Formats.OPENURL).should.equal(PNX.toOpenUrl);
    });
    it("should convert PNX data to RIS", function() {
      return Citero.map(PNX.data).from(PNX.format).to(Formats.RIS).should.equal(PNX.toRis);
    });
    it("should convert PNX data to Refworks Tagged", function() {
      return Citero.map(PNX.data).from(PNX.format).to(Formats.REFWORKS_TAGGED).should.equal(PNX.toRefworksTagged);
    });
    it("should convert PNX data to bibtex", function() {
      return Citero.map(PNX.data).from(PNX.format).to(Formats.BIBTEX).should.equal(PNX.toBibtex);
    });
    it("should convert PNX data to easybib", function() {
      return Citero.map(PNX.data).from(PNX.format).to(Formats.EASYBIB).should.equal(PNX.toEasyBib);
    });
    it("should convert PNX data to csl", function() {
      return Citero.map(PNX.data).from(PNX.format).to(Formats.CSL).should.equal(PNX.toCsl);
    });
    return it("should convert PNX data to csf", function() {
      return Citero.map(PNX.data).from(PNX.format).to(Formats.CSF).should.equal(PNX.toCsf);
    });
  });

}).call(this);
