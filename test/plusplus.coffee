Helper = require('hubot-test-helper')
chai = require('chai')
var assert = require('chai').assert;
expect = chai.expect

helper = new Helper('../src/plusplus.coffee')

 var room;

describe('example script', function(){
  before(function(){
    room = helper.createRoom()
  })
  after(function(){
    room.destroy()
  })
  it('doesn\'t need badgers', function(){
    room = helper.createRoom()
    room.user.say('snehit', 'lol')
    assert.equal(room.messages, 'test')
    room.destroy()
  })
})