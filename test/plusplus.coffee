const Helper = require('hubot-test-helper');
const expect = require('chai').expect;

const helper = new Helper('../src/plusplus.js');
const co = require('co');

describe('example script', function() {
  before(function() {
    this.room = helper.createRoom();
  });
  after(function() {
    this.room.destroy();
  });

  context('user says hi to hubot', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('Snehit', 'lol');
        yield this.room.user.say('Snehit', 'lol');
      }.bind(this));
    });

    it('should reply to user', function() {
      expect(this.room.messages).to.eql([
        ['Snehit', 'lol']
      ]);
    });
  });
});