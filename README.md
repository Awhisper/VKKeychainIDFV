
没啥技术含量，把工作里的老用的东西，单拿出来了，留个念想 
 
# VKKeychainIDFV

开发中都有获取uuid`用户唯一标示`的需求

有很多种方法
idfv是苹果后来提供的用于识别设备唯一标识的方案之一（注意__之一__）


- IMEI，苹果允许的API不能获取，不会变化，设备唯一
- UDID，曾经可以获取现在也成为禁止调用的API，不会变化，设备唯一，
- MAC，不能直接通过设备API获取，某种脑洞可以通过WIFI下路由器反馈信息来回传MAC地址，很不方便，不会变化，设备唯一
- IDFA，广告标示符，经常容易变，每当用户针对app关闭再开启一次广告追踪，就会发生变化
- IDFV，厂商标示符，不太容易变，每当用户卸载完app厂家旗下所有app后，再次安装，会发生变化
- NSUUID，苹果API接口，每次获取都变化

可以确认的是，在众多可选的标识方案里，都不能保证永远不变，所以必须配合Keychain使用，有了keychain至少保证，只要用户不刷机，无论是升级系统，还是卸载光所有app，都不会发生变化

只要有了Keychain的辅助，可以说随便选一个标识，只要存入keychain，都能保证不变了。

这里选择了目前来看更加稳定的IDFV


# Usage

导入文件

`import "UIDevice+VKKeychainIDFV.h"`

`NSString* idfv = [UIDevice VKKeychainIDFV];`
