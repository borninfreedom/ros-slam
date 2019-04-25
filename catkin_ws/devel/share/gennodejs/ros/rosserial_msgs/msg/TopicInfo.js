// Auto-generated. Do not edit!

// (in-package rosserial_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TopicInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topic_id = null;
      this.topic_name = null;
      this.message_type = null;
      this.md5sum = null;
      this.buffer_size = null;
    }
    else {
      if (initObj.hasOwnProperty('topic_id')) {
        this.topic_id = initObj.topic_id
      }
      else {
        this.topic_id = 0;
      }
      if (initObj.hasOwnProperty('topic_name')) {
        this.topic_name = initObj.topic_name
      }
      else {
        this.topic_name = '';
      }
      if (initObj.hasOwnProperty('message_type')) {
        this.message_type = initObj.message_type
      }
      else {
        this.message_type = '';
      }
      if (initObj.hasOwnProperty('md5sum')) {
        this.md5sum = initObj.md5sum
      }
      else {
        this.md5sum = '';
      }
      if (initObj.hasOwnProperty('buffer_size')) {
        this.buffer_size = initObj.buffer_size
      }
      else {
        this.buffer_size = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TopicInfo
    // Serialize message field [topic_id]
    bufferOffset = _serializer.uint16(obj.topic_id, buffer, bufferOffset);
    // Serialize message field [topic_name]
    bufferOffset = _serializer.string(obj.topic_name, buffer, bufferOffset);
    // Serialize message field [message_type]
    bufferOffset = _serializer.string(obj.message_type, buffer, bufferOffset);
    // Serialize message field [md5sum]
    bufferOffset = _serializer.string(obj.md5sum, buffer, bufferOffset);
    // Serialize message field [buffer_size]
    bufferOffset = _serializer.int32(obj.buffer_size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TopicInfo
    let len;
    let data = new TopicInfo(null);
    // Deserialize message field [topic_id]
    data.topic_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [topic_name]
    data.topic_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message_type]
    data.message_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [md5sum]
    data.md5sum = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [buffer_size]
    data.buffer_size = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.topic_name.length;
    length += object.message_type.length;
    length += object.md5sum.length;
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosserial_msgs/TopicInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ad51f88fc44892f8c10684077646005';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # special topic_ids
    uint16 ID_PUBLISHER=0
    uint16 ID_SUBSCRIBER=1
    uint16 ID_SERVICE_SERVER=2
    uint16 ID_SERVICE_CLIENT=4
    uint16 ID_PARAMETER_REQUEST=6
    uint16 ID_LOG=7
    uint16 ID_TIME=10
    uint16 ID_TX_STOP=11
    
    # The endpoint ID for this topic
    uint16 topic_id
    
    string topic_name
    string message_type
    
    # MD5 checksum for this message type
    string md5sum
    
    # size of the buffer message must fit in
    int32 buffer_size
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TopicInfo(null);
    if (msg.topic_id !== undefined) {
      resolved.topic_id = msg.topic_id;
    }
    else {
      resolved.topic_id = 0
    }

    if (msg.topic_name !== undefined) {
      resolved.topic_name = msg.topic_name;
    }
    else {
      resolved.topic_name = ''
    }

    if (msg.message_type !== undefined) {
      resolved.message_type = msg.message_type;
    }
    else {
      resolved.message_type = ''
    }

    if (msg.md5sum !== undefined) {
      resolved.md5sum = msg.md5sum;
    }
    else {
      resolved.md5sum = ''
    }

    if (msg.buffer_size !== undefined) {
      resolved.buffer_size = msg.buffer_size;
    }
    else {
      resolved.buffer_size = 0
    }

    return resolved;
    }
};

// Constants for message
TopicInfo.Constants = {
  ID_PUBLISHER: 0,
  ID_SUBSCRIBER: 1,
  ID_SERVICE_SERVER: 2,
  ID_SERVICE_CLIENT: 4,
  ID_PARAMETER_REQUEST: 6,
  ID_LOG: 7,
  ID_TIME: 10,
  ID_TX_STOP: 11,
}

module.exports = TopicInfo;
