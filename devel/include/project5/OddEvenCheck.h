// Generated by gencpp from file project5/OddEvenCheck.msg
// DO NOT EDIT!


#ifndef PROJECT5_MESSAGE_ODDEVENCHECK_H
#define PROJECT5_MESSAGE_ODDEVENCHECK_H

#include <ros/service_traits.h>


#include <project5/OddEvenCheckRequest.h>
#include <project5/OddEvenCheckResponse.h>


namespace project5
{

struct OddEvenCheck
{

typedef OddEvenCheckRequest Request;
typedef OddEvenCheckResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct OddEvenCheck
} // namespace project5


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::project5::OddEvenCheck > {
  static const char* value()
  {
    return "4ff0b0ab1ed04611e3a2b4090af9ee4f";
  }

  static const char* value(const ::project5::OddEvenCheck&) { return value(); }
};

template<>
struct DataType< ::project5::OddEvenCheck > {
  static const char* value()
  {
    return "project5/OddEvenCheck";
  }

  static const char* value(const ::project5::OddEvenCheck&) { return value(); }
};


// service_traits::MD5Sum< ::project5::OddEvenCheckRequest> should match
// service_traits::MD5Sum< ::project5::OddEvenCheck >
template<>
struct MD5Sum< ::project5::OddEvenCheckRequest>
{
  static const char* value()
  {
    return MD5Sum< ::project5::OddEvenCheck >::value();
  }
  static const char* value(const ::project5::OddEvenCheckRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::project5::OddEvenCheckRequest> should match
// service_traits::DataType< ::project5::OddEvenCheck >
template<>
struct DataType< ::project5::OddEvenCheckRequest>
{
  static const char* value()
  {
    return DataType< ::project5::OddEvenCheck >::value();
  }
  static const char* value(const ::project5::OddEvenCheckRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::project5::OddEvenCheckResponse> should match
// service_traits::MD5Sum< ::project5::OddEvenCheck >
template<>
struct MD5Sum< ::project5::OddEvenCheckResponse>
{
  static const char* value()
  {
    return MD5Sum< ::project5::OddEvenCheck >::value();
  }
  static const char* value(const ::project5::OddEvenCheckResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::project5::OddEvenCheckResponse> should match
// service_traits::DataType< ::project5::OddEvenCheck >
template<>
struct DataType< ::project5::OddEvenCheckResponse>
{
  static const char* value()
  {
    return DataType< ::project5::OddEvenCheck >::value();
  }
  static const char* value(const ::project5::OddEvenCheckResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PROJECT5_MESSAGE_ODDEVENCHECK_H