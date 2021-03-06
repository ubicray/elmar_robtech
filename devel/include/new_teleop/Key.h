// Generated by gencpp from file new_teleop/Key.msg
// DO NOT EDIT!


#ifndef NEW_TELEOP_MESSAGE_KEY_H
#define NEW_TELEOP_MESSAGE_KEY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace new_teleop
{
template <class ContainerAllocator>
struct Key_
{
  typedef Key_<ContainerAllocator> Type;

  Key_()
    : key_code(0)
    , key_name()
    , key_pressed(false)  {
    }
  Key_(const ContainerAllocator& _alloc)
    : key_code(0)
    , key_name(_alloc)
    , key_pressed(false)  {
  (void)_alloc;
    }



   typedef uint16_t _key_code_type;
  _key_code_type key_code;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _key_name_type;
  _key_name_type key_name;

   typedef uint8_t _key_pressed_type;
  _key_pressed_type key_pressed;




  typedef boost::shared_ptr< ::new_teleop::Key_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::new_teleop::Key_<ContainerAllocator> const> ConstPtr;

}; // struct Key_

typedef ::new_teleop::Key_<std::allocator<void> > Key;

typedef boost::shared_ptr< ::new_teleop::Key > KeyPtr;
typedef boost::shared_ptr< ::new_teleop::Key const> KeyConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::new_teleop::Key_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::new_teleop::Key_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace new_teleop

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'new_teleop': ['/home/tudeng/elmar_robtech/src/new_teleop/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::new_teleop::Key_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::new_teleop::Key_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::new_teleop::Key_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::new_teleop::Key_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::new_teleop::Key_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::new_teleop::Key_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::new_teleop::Key_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9709d7232efeba3860fec95e77ac1ae6";
  }

  static const char* value(const ::new_teleop::Key_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9709d7232efeba38ULL;
  static const uint64_t static_value2 = 0x60fec95e77ac1ae6ULL;
};

template<class ContainerAllocator>
struct DataType< ::new_teleop::Key_<ContainerAllocator> >
{
  static const char* value()
  {
    return "new_teleop/Key";
  }

  static const char* value(const ::new_teleop::Key_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::new_teleop::Key_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Key code as defined in linux/inupt.h\n\
uint16 key_code\n\
\n\
# Key name string as defined in evtest, see http://elinux.org/images/9/93/Evtest.c\n\
string key_name\n\
\n\
# 'True' if key was pressed, 'False' otherwise\n\
bool key_pressed\n\
";
  }

  static const char* value(const ::new_teleop::Key_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::new_teleop::Key_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.key_code);
      stream.next(m.key_name);
      stream.next(m.key_pressed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Key_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::new_teleop::Key_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::new_teleop::Key_<ContainerAllocator>& v)
  {
    s << indent << "key_code: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.key_code);
    s << indent << "key_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.key_name);
    s << indent << "key_pressed: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.key_pressed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NEW_TELEOP_MESSAGE_KEY_H
