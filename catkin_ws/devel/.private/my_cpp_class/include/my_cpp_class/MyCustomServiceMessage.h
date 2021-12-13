// Generated by gencpp from file my_cpp_class/MyCustomServiceMessage.msg
// DO NOT EDIT!


#ifndef MY_CPP_CLASS_MESSAGE_MYCUSTOMSERVICEMESSAGE_H
#define MY_CPP_CLASS_MESSAGE_MYCUSTOMSERVICEMESSAGE_H

#include <ros/service_traits.h>


#include <my_cpp_class/MyCustomServiceMessageRequest.h>
#include <my_cpp_class/MyCustomServiceMessageResponse.h>


namespace my_cpp_class
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
} // namespace my_cpp_class


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::my_cpp_class::MyCustomServiceMessage > {
  static const char* value()
  {
    return "b92c952a9248b3029cefe45f52f6ffde";
  }

  static const char* value(const ::my_cpp_class::MyCustomServiceMessage&) { return value(); }
};

template<>
struct DataType< ::my_cpp_class::MyCustomServiceMessage > {
  static const char* value()
  {
    return "my_cpp_class/MyCustomServiceMessage";
  }

  static const char* value(const ::my_cpp_class::MyCustomServiceMessage&) { return value(); }
};


// service_traits::MD5Sum< ::my_cpp_class::MyCustomServiceMessageRequest> should match
// service_traits::MD5Sum< ::my_cpp_class::MyCustomServiceMessage >
template<>
struct MD5Sum< ::my_cpp_class::MyCustomServiceMessageRequest>
{
  static const char* value()
  {
    return MD5Sum< ::my_cpp_class::MyCustomServiceMessage >::value();
  }
  static const char* value(const ::my_cpp_class::MyCustomServiceMessageRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_cpp_class::MyCustomServiceMessageRequest> should match
// service_traits::DataType< ::my_cpp_class::MyCustomServiceMessage >
template<>
struct DataType< ::my_cpp_class::MyCustomServiceMessageRequest>
{
  static const char* value()
  {
    return DataType< ::my_cpp_class::MyCustomServiceMessage >::value();
  }
  static const char* value(const ::my_cpp_class::MyCustomServiceMessageRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::my_cpp_class::MyCustomServiceMessageResponse> should match
// service_traits::MD5Sum< ::my_cpp_class::MyCustomServiceMessage >
template<>
struct MD5Sum< ::my_cpp_class::MyCustomServiceMessageResponse>
{
  static const char* value()
  {
    return MD5Sum< ::my_cpp_class::MyCustomServiceMessage >::value();
  }
  static const char* value(const ::my_cpp_class::MyCustomServiceMessageResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_cpp_class::MyCustomServiceMessageResponse> should match
// service_traits::DataType< ::my_cpp_class::MyCustomServiceMessage >
template<>
struct DataType< ::my_cpp_class::MyCustomServiceMessageResponse>
{
  static const char* value()
  {
    return DataType< ::my_cpp_class::MyCustomServiceMessage >::value();
  }
  static const char* value(const ::my_cpp_class::MyCustomServiceMessageResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MY_CPP_CLASS_MESSAGE_MYCUSTOMSERVICEMESSAGE_H