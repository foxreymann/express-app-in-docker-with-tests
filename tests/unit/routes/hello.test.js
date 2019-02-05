const expect = require('chai').expect

const hello = require('../../../routes/hello')

let req

const res = {
    sendCalledWith: '',
    send: function(arg) {
        this.sendCalledWith = arg
    }
};

describe('Hello Route', () => {
  it('should return "Hello world"', () => {
    hello(req, res)
    expect(res.sendCalledWith).to.equal('Hello world')
  })
})
