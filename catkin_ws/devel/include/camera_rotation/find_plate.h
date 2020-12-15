// Generated by gencpp from file camera_rotation/find_plate.msg
// DO NOT EDIT!


#ifndef CAMERA_ROTATION_MESSAGE_FIND_PLATE_H
#define CAMERA_ROTATION_MESSAGE_FIND_PLATE_H

#include <ros/service_traits.h>


#include <camera_rotation/find_plateRequest.h>
#include <camera_rotation/find_plateResponse.h>


namespace camera_rotation
{

struct find_plate
{

typedef find_plateRequest Request;
typedef find_plateResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct find_plate
} // namespace camera_rotation


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::camera_rotation::find_plate > {
  static const char* value()
  {
    return "34313b90b4f673269df1457d530d9d5e";
  }

  static const char* value(const ::camera_rotation::find_plate&) { return value(); }
};

template<>
struct DataType< ::camera_rotation::find_plate > {
  static const char* value()
  {
    return "camera_rotation/find_plate";
  }

  static const char* value(const ::camera_rotation::find_plate&) { return value(); }
};


// service_traits::MD5Sum< ::camera_rotation::find_plateRequest> should match
// service_traits::MD5Sum< ::camera_rotation::find_plate >
template<>
struct MD5Sum< ::camera_rotation::find_plateRequest>
{
  static const char* value()
  {
    return MD5Sum< ::camera_rotation::find_plate >::value();
  }
  static const char* value(const ::camera_rotation::find_plateRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::camera_rotation::find_plateRequest> should match
// service_traits::DataType< ::camera_rotation::find_plate >
template<>
struct DataType< ::camera_rotation::find_plateRequest>
{
  static const char* value()
  {
    return DataType< ::camera_rotation::find_plate >::value();
  }
  static const char* value(const ::camera_rotation::find_plateRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::camera_rotation::find_plateResponse> should match
// service_traits::MD5Sum< ::camera_rotation::find_plate >
template<>
struct MD5Sum< ::camera_rotation::find_plateResponse>
{
  static const char* value()
  {
    return MD5Sum< ::camera_rotation::find_plate >::value();
  }
  static const char* value(const ::camera_rotation::find_plateResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::camera_rotation::find_plateResponse> should match
// service_traits::DataType< ::camera_rotation::find_plate >
template<>
struct DataType< ::camera_rotation::find_plateResponse>
{
  static const char* value()
  {
    return DataType< ::camera_rotation::find_plate >::value();
  }
  static const char* value(const ::camera_rotation::find_plateResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CAMERA_ROTATION_MESSAGE_FIND_PLATE_H