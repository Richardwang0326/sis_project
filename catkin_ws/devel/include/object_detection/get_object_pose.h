// Generated by gencpp from file object_detection/get_object_pose.msg
// DO NOT EDIT!


#ifndef OBJECT_DETECTION_MESSAGE_GET_OBJECT_POSE_H
#define OBJECT_DETECTION_MESSAGE_GET_OBJECT_POSE_H

#include <ros/service_traits.h>


#include <object_detection/get_object_poseRequest.h>
#include <object_detection/get_object_poseResponse.h>


namespace object_detection
{

struct get_object_pose
{

typedef get_object_poseRequest Request;
typedef get_object_poseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct get_object_pose
} // namespace object_detection


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::object_detection::get_object_pose > {
  static const char* value()
  {
    return "f192399f711a48924df9a394d37edd67";
  }

  static const char* value(const ::object_detection::get_object_pose&) { return value(); }
};

template<>
struct DataType< ::object_detection::get_object_pose > {
  static const char* value()
  {
    return "object_detection/get_object_pose";
  }

  static const char* value(const ::object_detection::get_object_pose&) { return value(); }
};


// service_traits::MD5Sum< ::object_detection::get_object_poseRequest> should match
// service_traits::MD5Sum< ::object_detection::get_object_pose >
template<>
struct MD5Sum< ::object_detection::get_object_poseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::object_detection::get_object_pose >::value();
  }
  static const char* value(const ::object_detection::get_object_poseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::object_detection::get_object_poseRequest> should match
// service_traits::DataType< ::object_detection::get_object_pose >
template<>
struct DataType< ::object_detection::get_object_poseRequest>
{
  static const char* value()
  {
    return DataType< ::object_detection::get_object_pose >::value();
  }
  static const char* value(const ::object_detection::get_object_poseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::object_detection::get_object_poseResponse> should match
// service_traits::MD5Sum< ::object_detection::get_object_pose >
template<>
struct MD5Sum< ::object_detection::get_object_poseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::object_detection::get_object_pose >::value();
  }
  static const char* value(const ::object_detection::get_object_poseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::object_detection::get_object_poseResponse> should match
// service_traits::DataType< ::object_detection::get_object_pose >
template<>
struct DataType< ::object_detection::get_object_poseResponse>
{
  static const char* value()
  {
    return DataType< ::object_detection::get_object_pose >::value();
  }
  static const char* value(const ::object_detection::get_object_poseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // OBJECT_DETECTION_MESSAGE_GET_OBJECT_POSE_H