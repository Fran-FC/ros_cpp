// Generated by gencpp from file my_custom_srv_msg_pkg/MyCustomServiceMessage.msg
// DO NOT EDIT!


#ifndef MY_CUSTOM_SRV_MSG_PKG_MESSAGE_MYCUSTOMSERVICEMESSAGE_H
#define MY_CUSTOM_SRV_MSG_PKG_MESSAGE_MYCUSTOMSERVICEMESSAGE_H

#include <ros/service_traits.h>


#include <my_custom_srv_msg_pkg/MyCustomServiceMessageRequest.h>
#include <my_custom_srv_msg_pkg/MyCustomServiceMessageResponse.h>


namespace my_custom_srv_msg_pkg
{

struct MyCustomServiceMessage
{

typedef MyCustomServiceMessageRequest Request;
typedef MyCustomServiceMessageResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MyCustomServiceMessage
} // namespace my_custom_srv_msg_pkg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::my_custom_srv_msg_pkg::MyCustomServiceMessage > {
  static const char* value()
  {
    return "b92c952a9248b3029cefe45f52f6ffde";
  }

  static const char* value(const ::my_custom_srv_msg_pkg::MyCustomServiceMessage&) { return value(); }
};

template<>
struct DataType< ::my_custom_srv_msg_pkg::MyCustomServiceMessage > {
  static const char* value()
  {
    return "my_custom_srv_msg_pkg/MyCustomServiceMessage";
  }

  static const char* value(const ::my_custom_srv_msg_pkg::MyCustomServiceMessage&) { return value(); }
};


// service_traits::MD5Sum< ::my_custom_srv_msg_pkg::MyCustomServiceMessageRequest> should match
// service_traits::MD5Sum< ::my_custom_srv_msg_pkg::MyCustomServiceMessage >
template<>
struct MD5Sum< ::my_custom_srv_msg_pkg::MyCustomServiceMessageRequest>
{
  static const char* value()
  {
    return MD5Sum< ::my_custom_srv_msg_pkg::MyCustomServiceMessage >::value();
  }
  static const char* value(const ::my_custom_srv_msg_pkg::MyCustomServiceMessageRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_custom_srv_msg_pkg::MyCustomServiceMessageRequest> should match
// service_traits::DataType< ::my_custom_srv_msg_pkg::MyCustomServiceMessage >
template<>
struct DataType< ::my_custom_srv_msg_pkg::MyCustomServiceMessageRequest>
{
  static const char* value()
  {
    return DataType< ::my_custom_srv_msg_pkg::MyCustomServiceMessage >::value();
  }
  static const char* value(const ::my_custom_srv_msg_pkg::MyCustomServiceMessageRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::my_custom_srv_msg_pkg::MyCustomServiceMessageResponse> should match
// service_traits::MD5Sum< ::my_custom_srv_msg_pkg::MyCustomServiceMessage >
template<>
struct MD5Sum< ::my_custom_srv_msg_pkg::MyCustomServiceMessageResponse>
{
  static const char* value()
  {
    return MD5Sum< ::my_custom_srv_msg_pkg::MyCustomServiceMessage >::value();
  }
  static const char* value(const ::my_custom_srv_msg_pkg::MyCustomServiceMessageResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_custom_srv_msg_pkg::MyCustomServiceMessageResponse> should match
// service_traits::DataType< ::my_custom_srv_msg_pkg::MyCustomServiceMessage >
template<>
struct DataType< ::my_custom_srv_msg_pkg::MyCustomServiceMessageResponse>
{
  static const char* value()
  {
    return DataType< ::my_custom_srv_msg_pkg::MyCustomServiceMessage >::value();
  }
  static const char* value(const ::my_custom_srv_msg_pkg::MyCustomServiceMessageResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MY_CUSTOM_SRV_MSG_PKG_MESSAGE_MYCUSTOMSERVICEMESSAGE_H
