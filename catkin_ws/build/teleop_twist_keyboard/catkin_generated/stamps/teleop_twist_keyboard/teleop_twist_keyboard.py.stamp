#!/usr/bin/env python
# -*- coding: utf-8 -*- 
from __future__ import print_function

import roslib; roslib.load_manifest('teleop_twist_keyboard')
import rospy

from geometry_msgs.msg import Twist

import sys, select, termios, tty

msg = """
控制指令：
---------------------------
            w/i
   
      a/j         d/l

            s/k
For Holonomic mode (strafing), hold down the shift key:
---------------------------
   U    I    O
   J    K    L
   M    <    >

t : up (+z)
b : down (-z)

anything else : stop

q/z : 增加/减小 10% 的最大速度
r/v : 增加/减小 10% 的线速度
e/c : 增加/减小 10% 的角速度

CTRL-C 退出
"""

moveBindings = {
        'i':(1,0,0,0),
        'w':(1,0,0,0),
    
        'l':(0,0,0,-1),
        'd':(0,0,0,-1),

        'j':(0,0,0,1),
        'a':(0,0,0,1),

        'k':(-1,0,0,0),
        's':(-1,0,0,0),

        'I':(1,0,0,0),
        'W':(1,0,0,0),

        'L':(0,1,0,0),
        'D':(0,1,0,0),

        'J':(0,-1,0,0),
        'A':(0,-1,0,0),
        
        '<':(-1,0,0,0),
        'S':(-1,0,0,0),
        
        'M':(-1,1,0,0)
        
    }

speedBindings={
        'q':(1.1,1.1),
        'z':(.9,.9),
        'r':(1.1,1),
        'v':(.9,1),
        'e':(1,1.1),
        'c':(1,.9),
    }

def getKey():
    tty.setraw(sys.stdin.fileno())
    select.select([sys.stdin], [], [], 0)
    key = sys.stdin.read(1)
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key


def vels(speed,turn):
    return "当前:\tspeed %s\tturn %s " % (speed,turn)

if __name__=="__main__":
    settings = termios.tcgetattr(sys.stdin)

    pub = rospy.Publisher('cmd_vel', Twist, queue_size = 1)
    rospy.init_node('teleop_twist_keyboard')

    speed = rospy.get_param("~speed", 0.3)
    turn = rospy.get_param("~turn", 0.03)
    x = 0
    y = 0
    z = 0
    th = 0
    status = 0

    try:
        print(msg)
        print(vels(speed,turn))
        while(1):
            key = getKey()
            if key in moveBindings.keys():
                x = moveBindings[key][0]
                y = moveBindings[key][1]
                z = moveBindings[key][2]
                th = moveBindings[key][3]
            elif key in speedBindings.keys():
                speed = speed * speedBindings[key][0]
                turn = turn * speedBindings[key][1]

                print(vels(speed,turn))
                if (status == 14):
                    print(msg)
                status = (status + 1) % 15
            else:
                x = 0
                y = 0
                z = 0
                th = 0
                if (key == '\x03'):
                    break

            twist = Twist()
            twist.linear.x = x*speed; twist.linear.y = y*speed; twist.linear.z = z*speed;
            twist.angular.x = 0; twist.angular.y = 0; twist.angular.z = th*turn
            pub.publish(twist)

    except Exception as e:
        print(e)

    finally:
        twist = Twist()
        twist.linear.x = 0; twist.linear.y = 0; twist.linear.z = 0
        twist.angular.x = 0; twist.angular.y = 0; twist.angular.z = 0
        pub.publish(twist)

        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
