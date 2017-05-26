#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Twist
from new_teleop.msg import Key

moving = False


def callback(data):
    global moving
    if (data.key_pressed == True):
        moving = not moving
    pub = rospy.Publisher('cmd_vel', Twist, queue_size=1)
    rospy.loginfo(data.key_pressed)


    twist = Twist()
    twist.linear.x = 0
    twist.linear.y = 0
    twist.linear.z = 0
    twist.angular.x = 0
    twist.angular.y = 0
    twist.angular.z = 0

    if (moving == True):
        twist.linear.x = 1

    pub.publish(twist)


def listener():

    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("/keyboard", Key, callback)
    rospy.spin()


if __name__ == '__main__':
    listener()
