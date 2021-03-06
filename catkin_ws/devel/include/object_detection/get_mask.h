// Generated by gencpp from file object_detection/get_mask.msg
// DO NOT EDIT!


#ifndef OBJECT_DETECTION_MESSAGE_GET_MASK_H
#define OBJECT_DETECTION_MESSAGE_GET_MASK_H

#include <ros/service_traits.h>


#include <object_detection/get_maskRequest.h>
#include <object_detection/get_maskResponse.h>


namespace object_detection
{

struct get_mask
{

typedef get_maskRequest Request;
typedef get_maskResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct get_mask
} // namespace object_detection


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::object_detection::get_mask > {
  static const char* value()
  {
    return "94d4ff6c19cb75835eb16aafc2cfe0e8";
  }

  static const char* value(const ::object_detection::get_mask&) { return value(); }
};

template<>
struct DataType< ::object_detection::get_mask > {
  static const char* value()
  {
    return "object_detection/get_mask";
  }

  static const char* value(const ::object_detection::get_mask&) { return value(); }
};


// service_traits::MD5Sum< ::object_detection::get_maskRequest> should match
// service_traits::MD5Sum< ::object_detection::get_mask >
template<>
struct MD5Sum< ::object_detection::get_maskRequest>
{
  static const char* value()
  {
    return MD5Sum< ::object_detection::get_mask >::value();
  }
  static const char* value(const ::object_detection::get_maskRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::object_detection::get_maskRequest> should match
// service_traits::DataType< ::object_detection::get_mask >
template<>
struct DataType< ::object_detection::get_maskRequest>
{
  static const char* value()
  {
    return DataType< ::object_detection::get_mask >::value();
  }
  static const char* value(const ::object_detection::get_maskRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::object_detection::get_maskResponse> should match
// service_traits::MD5Sum< ::object_detection::get_mask >
template<>
struct MD5Sum< ::object_detection::get_maskResponse>
{
  static const char* value()
  {
    return MD5Sum< ::object_detection::get_mask >::value();
  }
  static const char* value(const ::object_detection::get_maskResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::object_detection::get_maskResponse> should match
// service_traits::DataType< ::object_detection::get_mask >
template<>
struct DataType< ::object_detection::get_maskResponse>
{
  static const char* value()
  {
    return DataType< ::object_detection::get_mask >::value();
  }
  static const char* value(const ::object_detection::get_maskResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // OBJECT_DETECTION_MESSAGE_GET_MASK_H
