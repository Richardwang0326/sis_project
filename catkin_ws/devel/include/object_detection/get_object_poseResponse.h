// Generated by gencpp from file object_detection/get_object_poseResponse.msg
// DO NOT EDIT!


#ifndef OBJECT_DETECTION_MESSAGE_GET_OBJECT_POSERESPONSE_H
#define OBJECT_DETECTION_MESSAGE_GET_OBJECT_POSERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace object_detection
{
template <class ContainerAllocator>
struct get_object_poseResponse_
{
  typedef get_object_poseResponse_<ContainerAllocator> Type;

  get_object_poseResponse_()
    : pose()  {
    }
  get_object_poseResponse_(const ContainerAllocator& _alloc)
    : pose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;





  typedef boost::shared_ptr< ::object_detection::get_object_poseResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::object_detection::get_object_poseResponse_<ContainerAllocator> const> ConstPtr;

}; // struct get_object_poseResponse_

typedef ::object_detection::get_object_poseResponse_<std::allocator<void> > get_object_poseResponse;

typedef boost::shared_ptr< ::object_detection::get_object_poseResponse > get_object_poseResponsePtr;
typedef boost::shared_ptr< ::object_detection::get_object_poseResponse const> get_object_poseResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::object_detection::get_object_poseResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::object_detection::get_object_poseResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::object_detection::get_object_poseResponse_<ContainerAllocator1> & lhs, const ::object_detection::get_object_poseResponse_<ContainerAllocator2> & rhs)
{
  return lhs.pose == rhs.pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::object_detection::get_object_poseResponse_<ContainerAllocator1> & lhs, const ::object_detection::get_object_poseResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace object_detection

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::object_detection::get_object_poseResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::object_detection::get_object_poseResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_detection::get_object_poseResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_detection::get_object_poseResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_detection::get_object_poseResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_detection::get_object_poseResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::object_detection::get_object_poseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f192399f711a48924df9a394d37edd67";
  }

  static const char* value(const ::object_detection::get_object_poseResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf192399f711a4892ULL;
  static const uint64_t static_value2 = 0x4df9a394d37edd67ULL;
};

template<class ContainerAllocator>
struct DataType< ::object_detection::get_object_poseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "object_detection/get_object_poseResponse";
  }

  static const char* value(const ::object_detection::get_object_poseResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::object_detection::get_object_poseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Pose pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::object_detection::get_object_poseResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::object_detection::get_object_poseResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct get_object_poseResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::object_detection::get_object_poseResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::object_detection::get_object_poseResponse_<ContainerAllocator>& v)
  {
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OBJECT_DETECTION_MESSAGE_GET_OBJECT_POSERESPONSE_H
