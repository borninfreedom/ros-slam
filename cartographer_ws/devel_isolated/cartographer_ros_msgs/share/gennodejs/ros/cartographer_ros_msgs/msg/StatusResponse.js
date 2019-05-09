// Auto-generated. Do not edit!

// (in-package cartographer_ros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class StatusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.code = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StatusResponse
    // Serialize message field [code]
    bufferOffset = _serializer.uint8(obj.code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StatusResponse
    let len;
    let data = new StatusResponse(null);
    // Deserialize message field [code]
    data.code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartographer_ros_msgs/StatusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f45eaca0a8effd52a8b18d39434a6627';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Copyright 2018 The Cartographer Authors
    #
    # Licensed under the Apache License, Version 2.0 (the "License");
    # you may not use this file except in compliance with the License.
    # You may obtain a copy of the License at
    #
    #      http://www.apache.org/licenses/LICENSE-2.0
    #
    # Unless required by applicable law or agreed to in writing, software
    # distributed under the License is distributed on an "AS IS" BASIS,
    # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    # See the License for the specific language governing permissions and
    # limitations under the License.
    
    # A common message type to indicate the outcome of a service call.
    uint8 code
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StatusResponse(null);
    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = StatusResponse;
