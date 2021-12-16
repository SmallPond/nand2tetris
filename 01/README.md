# 实现

用与非门构成其他逻辑门，实际上就是根据待实现的门电路的真值表转换由与非门构成的基本表达式。为可用[nandgame](https://nandgame.com/)测试，该网站也基本给出了实现的顺序。

- 非门（invert） 
- 与门（And）
- 或门（Or）
- 异或门（Xor）

确定好后用课程提供的软件（Hardware simulator）再次测试，Unit 1.5 描述了过程。基本过程是：Hardware simulator 加载 .hdl 文件，然后再加载脚本自动测试，点击运行后会生成对应 .out 文件。可以说是很棒了！


**Unit 1.1 Boolean Function**: 涉及布尔逻辑基本运算和真值表的介绍，可直接跳过

**Unit 1.2 Boolean Function**:布尔表达式和真值表之间的转换关系，依然可以跳过

**Unit 1.3 Logic Gates** ： 介绍基本的逻辑门及其电路实现原理
需要实现的基本器件

**Unit 1.4 Hardware Simulation**： 介绍硬件描述语言（HDL）,可快速过一遍，实现一个异或门（xor.hdl）
