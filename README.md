# HServer

一个游戏的后端，主要用来解析 [HE](https://github.com/moketao/HEditor) 编辑输出的 json 数据，并校验玩家的合成请求，下发产出物品给玩家，预计将大大简化后端编码，节省开发时间，把所有玩家行为（包括战斗？）都归结到合成系统中，从传统程序员的角度看，这样做可能性能上会有些损失，但硬件发展是以摩尔定律方式进行，会越来越便宜，并且这个模式比较适合快速的云扩充，有点疯狂，有点痴心妄想，希望有共同想法的程序员加入，请联系我QQ：30558209，或我的邮箱：moketao@qq.com


### 目前进度：

已整合 [proto2map](https://github.com/moketao/proto2map) 和 [proto2class](https://github.com/moketao/proto2class)，可根据 msg.proto **批量生成代码**，如下图:

![截图](https://github.com/moketao/HServer/raw/master/snap/pic.png)


已整合 [protoc-gen-doc](https://github.com/pseudomuto/protoc-gen-doc) 用于导出协议信息

其它：合成逻辑（进行中...）



### 目标设定：

1. 导出 websocket 协议给前端，并支持协议类管理和代码协议自动生成。（前期）
1. 解决登陆和重登录，心跳离线后存储等基本特性。 （前期）
1. 加入数据库，暂定 redis。 （中期）
1. 处理玩家的合成请求，并录入数据库。（后期）
1. 分布式。（后期）

