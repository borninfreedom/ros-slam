// Auto-generated. Do not edit!

// (in-package cartographer_ros_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SubmapQueryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.submap_id = null;
      this.trajectory_id = null;
    }
    else {
      if (initObj.hasOwnProperty('submap_id')) {
        this.submap_id = initObj.submap_id
      }
      else {
        this.submap_id = 0;
      }
      if (initObj.hasOwnProperty('trajectory_id')) {
        this.trajectory_id = initObj.trajectory_id
      }
      else {
        this.trajectory_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubmapQueryRequest
    // Serialize message field [submap_id]
    bufferOffset = _serializer.int32(obj.submap_id, buffer, bufferOffset);
    // Serialize message field [trajectory_id]
    bufferOffset = _serializer.int32(obj.trajectory_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubmapQueryRequest
    let len;
    let data = new SubmapQueryRequest(null);
    // Deserialize message field [submap_id]
    data.submap_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [trajectory_id]
    data.trajectory_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cartographer_ros_msgs/SubmapQueryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f6c577cc6f708215df52301bc96ae0d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    int32 submap_id
    int32 trajectory_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SubmapQueryRequest(null);
    if (msg.submap_id !== undefined) {
      resolved.submap_id = msg.submap_id;
    }
    else {
      resolved.submap_id = 0
    }

    if (msg.trajectory_id !== undefined) {
      resolved.trajectory_id = msg.trajectory_id;
    }
    else {
      resolved.trajectory_id = 0
    }

    return resolved;
    }
};

class SubmapQueryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.submap_version = null;
      this.cells = null;
      this.width = null;
      this.height = null;
      this.resolution = null;
      this.slice_pose = null;
      this.error_message = null;
    }
    else {
      if (initObj.hasOwnProperty('submap_version')) {
        this.submap_version = initObj.submap_version
      }
      else {
        this.submap_version = 0;
      }
      if (initObj.hasOwnProperty('cells')) {
        this.cells = initObj.cells
      }
      else {
        this.cells = [];
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('resolution')) {
        this.resolution = initObj.resolution
      }
      else {
        this.resolution = 0.0;
      }
      if (initObj.hasOwnProperty('slice_pose')) {
        this.slice_pose = initObj.slice_pose
      }
      else {
        this.slice_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('error_message')) {
        this.error_message = initObj.error_message
      }
      else {
        this.error_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubmapQueryResponse
    // Serialize message field [submap_version]
    bufferOffset = _serializer.int32(obj.submap_version, buffer, bufferOffset);
    // Serialize message field [cells]
    bufferOffset = _arraySerializer.uint8(obj.cells, buffer, bufferOffset, null);
    // Serialize message field [width]
    bufferOffset = _serializer.int32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    // Serialize message field [resolution]
    bufferOffset = _serializer.float64(obj.resolution, buffer, bufferOffset);
    // Serialize message field [slice_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.slice_pose, buffer, bufferOffset);
    // Serialize message field [error_message]
    bufferOffset = _serializer.string(obj.error_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubmapQueryResponse
    let len;
    let data = new SubmapQueryResponse(null);
    // Deserialize message field [submap_version]
    data.submap_version = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cells]
    data.cells = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [width]
    data.width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [resolution]
    data.resolution = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [slice_pose]
    data.slice_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_message]
    data.error_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.cells.length;
    length += object.error_message.length;
    return length + 84;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cartographer_ros_msgs/SubmapQueryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd714bb0d07bc98995c3ddaa9d96d2db4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 submap_version
    uint8[] cells
    int32 width
    int32 height
    float64 resolution
    geometry_msgs/Pose slice_pose
    string error_message
    
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SubmapQueryResponse(null);
    if (msg.submap_version !== undefined) {
      resolved.submap_version = msg.submap_version;
    }
    else {
      resolved.submap_version = 0
    }

    if (msg.cells !== undefined) {
      resolved.cells = msg.cells;
    }
    else {
      resolved.cells = []
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.resolution !== undefined) {
      resolved.resolution = msg.resolution;
    }
    else {
      resolved.resolution = 0.0
    }

    if (msg.slice_pose !== undefined) {
      resolved.slice_pose = geometry_msgs.msg.Pose.Resolve(msg.slice_pose)
    }
    else {
      resolved.slice_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.error_message !== undefined) {
      resolved.error_message = msg.error_message;
    }
    else {
      resolved.error_message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SubmapQueryRequest,
  Response: SubmapQueryResponse,
  md5sum() { return '0db2c1e6e0442d0daae552833fa004b1'; },
  datatype() { return 'cartographer_ros_msgs/SubmapQuery'; }
};
