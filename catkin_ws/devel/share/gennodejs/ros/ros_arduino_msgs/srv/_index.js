
"use strict";

let AnalogWrite = require('./AnalogWrite.js')
let ServoWrite = require('./ServoWrite.js')
let ServoRead = require('./ServoRead.js')
let AnalogRead = require('./AnalogRead.js')
let DigitalWrite = require('./DigitalWrite.js')
let DigitalRead = require('./DigitalRead.js')
let DigitalSetDirection = require('./DigitalSetDirection.js')

module.exports = {
  AnalogWrite: AnalogWrite,
  ServoWrite: ServoWrite,
  ServoRead: ServoRead,
  AnalogRead: AnalogRead,
  DigitalWrite: DigitalWrite,
  DigitalRead: DigitalRead,
  DigitalSetDirection: DigitalSetDirection,
};
