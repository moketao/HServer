# HServer

一个游戏的后端，主要用来解析 [HE](https://github.com/moketao/HEditor) 编辑输出的 json 数据，并校验玩家的合成请求，下发产出物品给玩家，预计将大大简化后端编码，节省开发时间，把所有玩家行为（包括战斗？）都归结到合成系统中，从传统程序员的角度看，这样做可能性能上会有些损失，但硬件发展是以摩尔定律方式进行，会越来越便宜，并且这个模式比较适合快速的云扩充，有点疯狂，有点痴心妄想，希望有共同想法的程序员加入，请联系我QQ：30558209，或我的邮箱：moketao@qq.com


目前进度：


使用 protoc-gen-doc 导出协议信息
https://github.com/pseudomuto/protoc-gen-doc
