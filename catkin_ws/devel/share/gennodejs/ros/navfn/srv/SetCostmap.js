// Auto-generated. Do not edit!

// (in-package navfn.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetCostmapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.costs = null;
      this.height = null;
      this.width = null;
    }
    else {
      if (initObj.hasOwnProperty('costs')) {
        this.costs = initObj.costs
      }
      else {
        this.costs = [];
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetCostmapRequest
    // Serialize message field [costs]
    bufferOffset = _arraySerializer.uint8(obj.costs, buffer, bufferOffset, null);
    // Serialize message field [height]
    bufferOffset = _serializer.uint16(obj.height, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.uint16(obj.width, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetCostmapRequest
    let len;
    let data = new SetCostmapRequest(null);
    // Deserialize message field [costs]
    data.costs = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [height]
    data.height = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.costs.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'navfn/SetCostmapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '370ec969cdb71f9cde7c7cbe0d752308';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] costs
    uint16 height
    uint16 width
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetCostmapRequest(null);
    if (msg.costs !== undefined) {
      resolved.costs = msg.costs;
    }
    else {
      resolved.costs = []
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    return resolved;
    }
};

class SetCostmapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetCostmapResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetCostmapResponse
    let len;
    let data = new SetCostmapResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'navfn/SetCostmapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetCostmapResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetCostmapRequest,
  Response: SetCostmapResponse,
  md5sum() { return '370ec969cdb71f9cde7c7cbe0d752308'; },
  datatype() { return 'navfn/SetCostmap'; }
};
