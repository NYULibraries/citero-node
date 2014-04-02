Citero = require('../src/citero').Citero
chai = require 'chai'
chai.should()
describe "Citero mapping ", ->
  data = "TY  -  JOUR\nAU  -  Shannon, Claude E.\nER  -\n\n"
  it "should convert RIS data to OpenURL", ->
    Citero.map(data).from("RIS").to("OpenURL").should.equal("rft.ulr_ver=Z39.88-2004&rft.ctx_ver=Z39.88-2004&rft.rfr_id=info:sid/libraries.nyu.edu:citero&rft_val_fmlt=info:ofi/fmt:kev:mtx:journal&rft.genre=article&rft.au=Shannon%2C+Claude+E.")