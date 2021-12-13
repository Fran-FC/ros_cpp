// Auto-generated. Do not edit!

// (in-package services_quiz.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class BB8CustomServiceMessageRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.side = null;
      this.repetitions = null;
    }
    else {
      if (initObj.hasOwnProperty('side')) {
        this.side = initObj.side
      }
      else {
        this.side = 0.0;
      }
      if (initObj.hasOwnProperty('repetitions')) {
        this.repetitions = initObj.repetitions
      }
      else {
        this.repetitions = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BB8CustomServiceMessageRequest
    // Serialize message field [side]
    bufferOffset = _serializer.float64(obj.side, buffer, bufferOffset);
    // Serialize message field [repetitions]
    bufferOffset = _serializer.int32(obj.repetitions, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BB8CustomServiceMessageRequest
    let len;
    let data = new BB8CustomServiceMessageRequest(null);
    // Deserialize message field [side]
    data.side = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [repetitions]
    data.repetitions = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'services_quiz/BB8CustomServiceMessageRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2510b5db7c557bb39c17842733f10222';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 side         # The distance of each side of the square
    int32 repetitions    # The number of times BB-8 has to execute the square movement when the service is called
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BB8CustomServiceMessageRequest(null);
    if (msg.side !== undefined) {
      resolved.side = msg.side;
    }
    else {
      resolved.side = 0.0
    }

    if (msg.repetitions !== undefined) {
      resolved.repetitions = msg.repetitions;
    }
    else {
      resolved.repetitions = 0
    }

    return resolved;
    }
};

class BB8CustomServiceMessageResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BB8CustomServiceMessageResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BB8CustomServiceMessageResponse
    let len;
    let data = new BB8CustomServiceMessageResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'services_quiz/BB8CustomServiceMessageResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success         # Did it achieve it?
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BB8CustomServiceMessageResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: BB8CustomServiceMessageRequest,
  Response: BB8CustomServiceMessageResponse,
  md5sum() { return 'b78c0d1a37ffcec6adef7714dda05daa'; },
  datatype() { return 'services_quiz/BB8CustomServiceMessage'; }
};
