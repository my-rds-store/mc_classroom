终端使用说明
==============

一. 概述
------------
.. image:: images/topological_graph.png
    :scale: 90%
    :alt: alternate text
    :align: center

-----------

    **云教室组件功能表:**

    +------------+--------------------------------------------------------------------------------------+
    | 组件       | 主要功能                                                                             |
    +============+======================================================================================+
    | 云主机     | 云主机是乾云云教室系统的核心，主要提供课程的制作、分发、和维护管理以及云桌面的管理。 |
    +------------+--------------------------------------------------------------------------------------+
    | 教师机     | 教师机主要是针对教师角色而设计，主要提供上下课以及对学生机的控制操作。               |
    +------------+--------------------------------------------------------------------------------------+
    | 学生机     | 学生机主要用于连接课程镜像来完成学生的上课功能                                       |
    +------------+--------------------------------------------------------------------------------------+


二. 快速安装及使用
--------------------

2.1 教师机安装
^^^^^^^^^^^^^^^^


.. [#]  教师机安装与配置


.. image:: images/mc_teacher_os_install.png
    :scale: 88%
    :alt: alternate text
    :align: center

.. image:: images/mc_teacher_os_install2.png
    :scale: 88%
    :alt: alternate text
    :align: center

.. image:: images/mc_teacher_passwd.png
    :scale: 55%
    :alt: alternate text
    :align: center

------

        .. seealso:: 

                口令: **massclouds123**

------


.. [#]  配置教师端

.. image:: images/mc_teacher_net_config.png
    :scale: 55%
    :alt: alternate text
    :align: center

.. image:: images/mc_teacher_base_config.png
    :scale: 55%
    :alt: alternate text
    :align: center


2.2 学生机批量部署
^^^^^^^^^^^^^^^^^^^^^

**〖条件〗** ：已经在系统工具-批量部署中上传批量部署文件，且已经开启部署，同时学生机全部改成PXE网络启动。授权类型为“离线”时，还需要在学生机的BIOS设置中开启虚拟化。
批量部署就是把制作好的学生机操作系统镜像批量分发安装到学生机，不再需要一台一台的安装，可以节约安装部署时间，大大减少了实施人员的工作量，也减少了维护人员的工作量。

**〖操作〗** ： 将装有镜像压缩包的U盘，插在教师端，usb2.0接口上，点击教师端，批量部署按钮, |tool_deploy| ，输入口令: **massclouds123** ,点击确定。

    .. |tool_deploy| image:: images/tool_deploy.png
        :scale: 50%

.. image:: images/mc_teacher_passwd.png
    :scale: 55%
    :alt: alternate text
    :align: center


点击 **选择文件**

.. image:: images/deploy_01.png
    :scale: 55%
    :alt: alternate text
    :align: center

目录， **/home/user/** 下，就是，插入的U盘。

.. image:: images/deploy_02.png
    :scale: 55%
    :alt: alternate text
    :align: center

如下图，选中，镜像压缩包，点击 **Open**

.. image:: images/deploy_03.png
    :scale: 55%
    :alt: alternate text
    :align: center

点击解压按钮

.. image:: images/deploy_04.png
    :scale: 55%
    :alt: alternate text
    :align: center

.. image:: images/deploy_05.png
    :scale: 55%
    :alt: alternate text
    :align: center

点击设置，若路由，开启了dhcp,只需将代理模式勾选，点击确定。即可。
若路由没开启dhcp , 则需要手动设置dhcp。然后点击确定。
8300终端，需要勾选UEFI启动。

.. image:: images/deploy_06.png
    :scale: 55%
    :alt: alternate text
    :align: center


点击，开始部署，启动部署服务，

.. image:: images/deploy_07.png
    :scale: 55%
    :alt: alternate text
    :align: center


学生机部署前设置：将学生机设置成PXE方式启动，即启动后按Delete键进入BIOS，选择PXE启动

.. image:: images/bios_pxe_config.jpg
       :scale: 40%
       :alt: alternate text
       :align: center

首选项设置成网络启动

.. image:: images/bios_pxe_config2.jpg
    :scale: 40%
    :alt: alternate text
    :align: center

网络唤醒功能设置成Enable

.. image:: images/bios_pxe_config3.jpg
    :scale: 40%
    :alt: alternate text
    :align: center

学生机下载安装：开启部署后，学生机网络启动后，会直接从云主机下载部署文件自动安装，最后安装完毕后，学生机直接关机。

**【注意】** ：学生机自动关机后，在部署完成之前不要再次手动开机，否则会造成学生机二次部署，延长批量部署的时间。

关闭部署：当所有学生机全部关机后，则说明部署已经完成了，这时点击关闭部署，删除部署文件，防止学生机开机后再次部署。

2.3. 学生机批量配置
^^^^^^^^^^^^^^^^^^^^^^^^^

手动打开所有学生机，在所有学生机完全进入后，点击教师端, 批量配置 |tool_config| ，输入口令：**massclouds123**,确定，打开批量配置窗口,在教师端上统一配置学生机，成功后，所有学生机连接到云主机并注册。


.. |tool_config| image:: images/tool_config.png
    :scale: 55%

.. image:: images/mc_client_passwd.png
    :scale: 55%
    :alt: alternate text
    :align: center

.. image:: images/deploy_config.png
    :scale: 55%
    :alt: alternate text
    :align: center

点击批量配置后，学生机会自动连接云主机。


.. image:: images/main_window.png
    :scale: 55%
    :alt: alternate text
    :align: center


2.4. 学生机手动配置
^^^^^^^^^^^^^^^^^^^^^

在学生机上，点击桌面右上角的设置图标 |tool_stting|,（口令:**massclouds123**）。


.. |tool_stting| image:: images/tool_setting.png
    :scale: 55%

.. image:: images/mc_client_passwd.png
    :scale: 55%
    :alt: alternate text
    :align: center
    
.. image:: images/mc_student_base_config.png
    :scale: 55%
    :alt: alternate text
    :align: center

.. image:: images/mc_student_net_config.png
       :scale: 55%
       :alt: alternate text
       :align: center 

2.5. 其他 
^^^^^^^^^^^^^^^^^^^^


        +-----------------------+-----------------------+
        |   图标                | 描述                  |
        +=======================+=======================+
        |    |tool_stting|      | 设置                  |
        +-----------------------+-----------------------+
        |    |tool_config|      | 批量配置              |
        +-----------------------+-----------------------+
        |    |tool_debug_tools| | 调试工具              |
        +-----------------------+-----------------------+
        |    |btn_poweroff|     | 关机                  |
        +-----------------------+-----------------------+
        |    |btn_restart|      | 重启                  |
        +-----------------------+-----------------------+


.. |tool_debug_tools| image:: images/tool_debug_tools.png
    :scale: 60%

.. |btn_poweroff| image:: images/btn_poweroff.png
    :scale: 135%

.. |btn_restart| image:: images/btn_restart.png
    :scale: 110%


.. 
  隐藏

    .. image:: images/tools.png
        :scale: 55%
        :alt: alternate text
        :align: center

    .. image:: images/terminal_info.png
        :scale: 55%
        :alt: alternate text
        :align: center


