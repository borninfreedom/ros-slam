// Auto-generated. Do not edit!

// (in-package costmap_2d.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VoxelGrid {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.data = null;
      this.origin = null;
      this.resolutions = null;
      this.size_x = null;
      this.size_y = null;
      this.size_z = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
      if (initObj.hasOwnProperty('origin')) {
        this.origin = initObj.origin
      }
      else {
        this.origin = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('resolutions')) {
        this.resolutions = initObj.resolutions
      }
      else {
        this.resolutions = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('size_x')) {
        this.size_x = initObj.size_x
      }
      else {
        this.size_x = 0;
      }
      if (initObj.hasOwnProperty('size_y')) {
        this.size_y = initObj.size_y
      }
      else {
        this.size_y = 0;
      }
      if (initObj.hasOwnProperty('size_z')) {
        this.size_z = initObj.size_z
      }
      else {
        this.size_z = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VoxelGrid
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint32(obj.data, buffer, bufferOffset, null);
    // Serialize message field [origin]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.origin, buffer, bufferOffset);
    // Serialize message field [resolutions]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.resolutions, buffer, bufferOffset);
    // Serialize message field [size_x]
    bufferOffset = _serializer.uint32(obj.size_x, buffer, bufferOffset);
    // Serialize message field [size_y]
    bufferOffset = _serializer.uint32(obj.size_y, buffer, bufferOffset);
    // Serialize message field [size_z]
    bufferOffset = _serializer.uint32(obj.size_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VoxelGrid
    let len;
    let data = new VoxelGrid(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [origin]
    data.origin = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [resolutions]
    data.resolutions = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [size_x]
    data.size_x = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [size_y]
    data.size_y = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [size_z]
    data.size_z = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.data.length;
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'costmap_2d/VoxelGrid';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48a040827e1322073d78ece5a497029c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint32[] data
    geometry_msgs/Point32 origin
    geometry_msgs/Vector3 resolutions
    uint32 size_x
    uint32 size_y
    uint32 size_z
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VoxelGrid(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    if (msg.origin !== undefined) {
      resolved.origin = geometry_msgs.msg.Point32.Resolve(msg.origin)
    }
    else {
      resolved.origin = new geometry_msgs.msg.Point32()
    }

    if (msg.resolutions !== undefined) {
      resolved.resolutions = geometry_msgs.msg.Vector3.Resolve(msg.resolutions)
    }
    else {
      resolved.resolutions = new geometry_msgs.msg.Vector3()
    }

    if (msg.size_x !== undefined) {
      resolved.size_x = msg.size_x;
    }
    else {
      resolved.size_x = 0
    }

    if (msg.size_y !== undefined) {
      resolved.size_y = msg.size_y;
    }
    else {
      resolved.size_y = 0
    }

    if (msg.size_z !== undefined) {
      resolved.size_z = msg.size_z;
    }
    else {
      resolved.size_z = 0
    }

    return resolved;
    }
};

module.exports = VoxelGrid;
