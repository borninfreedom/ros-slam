// Auto-generated. Do not edit!

// (in-package teb_local_planner.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrajectoryMsg = require('./TrajectoryMsg.js');
let std_msgs = _finder('std_msgs');
let costmap_converter = _finder('costmap_converter');

//-----------------------------------------------------------

class FeedbackMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.trajectories = null;
      this.selected_trajectory_idx = null;
      this.obstacles_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('trajectories')) {
        this.trajectories = initObj.trajectories
      }
      else {
        this.trajectories = [];
      }
      if (initObj.hasOwnProperty('selected_trajectory_idx')) {
        this.selected_trajectory_idx = initObj.selected_trajectory_idx
      }
      else {
        this.selected_trajectory_idx = 0;
      }
      if (initObj.hasOwnProperty('obstacles_msg')) {
        this.obstacles_msg = initObj.obstacles_msg
      }
      else {
        this.obstacles_msg = new costmap_converter.msg.ObstacleArrayMsg();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FeedbackMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [trajectories]
    // Serialize the length for message field [trajectories]
    bufferOffset = _serializer.uint32(obj.trajectories.length, buffer, bufferOffset);
    obj.trajectories.forEach((val) => {
      bufferOffset = TrajectoryMsg.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [selected_trajectory_idx]
    bufferOffset = _serializer.uint16(obj.selected_trajectory_idx, buffer, bufferOffset);
    // Serialize message field [obstacles_msg]
    bufferOffset = costmap_converter.msg.ObstacleArrayMsg.serialize(obj.obstacles_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FeedbackMsg
    let len;
    let data = new FeedbackMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [trajectories]
    // Deserialize array length for message field [trajectories]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectories = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectories[i] = TrajectoryMsg.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [selected_trajectory_idx]
    data.selected_trajectory_idx = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [obstacles_msg]
    data.obstacles_msg = costmap_converter.msg.ObstacleArrayMsg.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.trajectories.forEach((val) => {
      length += TrajectoryMsg.getMessageSize(val);
    });
    length += costmap_converter.msg.ObstacleArrayMsg.getMessageSize(object.obstacles_msg);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'teb_local_planner/FeedbackMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8086148d3a39de24ca2cc423f1e94e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message that contains intermediate results 
    # and diagnostics of the (predictive) planner.
    
    std_msgs/Header header
    
    # The planned trajectory (or if multiple plans exist, all of them)
    teb_local_planner/TrajectoryMsg[] trajectories
    
    # Index of the trajectory in 'trajectories' that is selected currently
    uint16 selected_trajectory_idx
    
    # List of active obstacles
    costmap_converter/ObstacleArrayMsg obstacles_msg
    
    
    
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
    MSG: teb_local_planner/TrajectoryMsg
    # Message that contains a trajectory for mobile robot navigation
    
    std_msgs/Header header
    teb_local_planner/TrajectoryPointMsg[] trajectory
    
    
    
    ================================================================================
    MSG: teb_local_planner/TrajectoryPointMsg
    # Message that contains single point on a trajectory suited for mobile navigation.
    # The trajectory is described by a sequence of poses, velocities,
    # accelerations and temporal information.
    
    # Why this message type?
    # nav_msgs/Path describes only a path without temporal information.
    # trajectory_msgs package contains only messages for joint trajectories.
    
    # The pose of the robot
    geometry_msgs/Pose pose
    
    # Corresponding velocity
    geometry_msgs/Twist velocity
    
    # Corresponding acceleration
    geometry_msgs/Twist acceleration
    
    duration time_from_start
    
    
    
    
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
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
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
    ================================================================================
    MSG: costmap_converter/ObstacleArrayMsg
    # Message that contains a list of polygon shaped obstacles.
    # Special types:
    # Polygon with 1 vertex: Point obstacle
    # Polygon with 2 vertices: Line obstacle
    # Polygon with more than 2 vertices: First and last points are assumed to be connected
    
    std_msgs/Header header
    
    costmap_converter/ObstacleMsg[] obstacles
    
    
    ================================================================================
    MSG: costmap_converter/ObstacleMsg
    # Special types:
    # Polygon with 1 vertex: Point obstacle (you might also specify a non-zero value for radius)
    # Polygon with 2 vertices: Line obstacle
    # Polygon with more than 2 vertices: First and last points are assumed to be connected
    
    std_msgs/Header header
    
    # Obstacle footprint (polygon descriptions)
    geometry_msgs/Polygon polygon
    
    # Specify the radius for circular/point obstacles
    float64 radius
    
    # Obstacle ID
    # Specify IDs in order to provide (temporal) relationships
    # between obstacles among multiple messages.
    int64 id
    
    # Individual orientation (centroid)
    geometry_msgs/Quaternion orientation
    
    # Individual velocities (centroid)
    geometry_msgs/TwistWithCovariance velocities
    
    
    ================================================================================
    MSG: geometry_msgs/Polygon
    #A specification of a polygon where the first and last points are assumed to be connected
    Point32[] points
    
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
    MSG: geometry_msgs/TwistWithCovariance
    # This expresses velocity in free space with uncertainty.
    
    Twist twist
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FeedbackMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.trajectories !== undefined) {
      resolved.trajectories = new Array(msg.trajectories.length);
      for (let i = 0; i < resolved.trajectories.length; ++i) {
        resolved.trajectories[i] = TrajectoryMsg.Resolve(msg.trajectories[i]);
      }
    }
    else {
      resolved.trajectories = []
    }

    if (msg.selected_trajectory_idx !== undefined) {
      resolved.selected_trajectory_idx = msg.selected_trajectory_idx;
    }
    else {
      resolved.selected_trajectory_idx = 0
    }

    if (msg.obstacles_msg !== undefined) {
      resolved.obstacles_msg = costmap_converter.msg.ObstacleArrayMsg.Resolve(msg.obstacles_msg)
    }
    else {
      resolved.obstacles_msg = new costmap_converter.msg.ObstacleArrayMsg()
    }

    return resolved;
    }
};

module.exports = FeedbackMsg;
