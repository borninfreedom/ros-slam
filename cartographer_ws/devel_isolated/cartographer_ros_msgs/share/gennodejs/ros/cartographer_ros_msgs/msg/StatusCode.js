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

class StatusCode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StatusCode
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StatusCode
    let len;
    let data = new StatusCode(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cartographer_ros_msgs/StatusCode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90c460dc6da71af1a19af6615a8dc9a4';
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
    
    # Definition of status code constants equivalent to the gRPC API.
    # https://developers.google.com/maps-booking/reference/grpc-api/status_codes
    uint8 OK=0
    uint8 CANCELLED=1
    uint8 UNKNOWN=2
    uint8 INVALID_ARGUMENT=3
    uint8 DEADLINE_EXCEEDED=4
    uint8 NOT_FOUND=5
    uint8 ALREADY_EXISTS=6
    uint8 PERMISSION_DENIED=7
    uint8 RESOURCE_EXHAUSTED=8
    uint8 FAILED_PRECONDITION=9
    uint8 ABORTED=10
    uint8 OUT_OF_RANGE=11
    uint8 UNIMPLEMENTED=12
    uint8 INTERNAL=13
    uint8 UNAVAILABLE=14
    uint8 DATA_LOSS=15
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StatusCode(null);
    return resolved;
    }
};

// Constants for message
StatusCode.Constants = {
  OK: 0,
  CANCELLED: 1,
  UNKNOWN: 2,
  INVALID_ARGUMENT: 3,
  DEADLINE_EXCEEDED: 4,
  NOT_FOUND: 5,
  ALREADY_EXISTS: 6,
  PERMISSION_DENIED: 7,
  RESOURCE_EXHAUSTED: 8,
  FAILED_PRECONDITION: 9,
  ABORTED: 10,
  OUT_OF_RANGE: 11,
  UNIMPLEMENTED: 12,
  INTERNAL: 13,
  UNAVAILABLE: 14,
  DATA_LOSS: 15,
}

module.exports = StatusCode;
