# 实现

Project 01 待实现内容[参考链接](https://www.nand2tetris.org/project01)
## 基本逻辑门
用与非门构成其他逻辑门，实际上就是根据待实现的门电路的真值表转换由与非门构成的基本表达式。为可用[nandgame](https://nandgame.com/)测试，该网站也基本给出了实现的顺序。

- 非门（invert） 
- 与门（And）
- 或门（Or）
- 异或门（Xor）

确定好后用课程提供的软件（Hardware simulator）再次测试，Unit 1.5 描述了过程。基本过程是：Hardware simulator 加载 .hdl 文件，然后再加载脚本自动测试，点击运行后会生成对应 .out 文件。可以说是很棒了！

## 数据选择器

同样是用真值表转逻辑表达式就好了

1. 数据选择器（Mux）: 指经过选择，把多个通道的数据传送到唯一的公共数据通道上去，实现数据选择功能的逻辑电路称为数据选择器。


2. 数据分配器（DMux）: 它有一个输入端和多个输出端，其逻辑功能是将一个输入端的信号发送至多个输出端中的某一个。

## 多 bit 总线

**每个的实现的思路在各自的文件中有说明。**

- 多位基础门电路
  - 多位并联多个基本器件即可
  - 多Way则串联多个基本期间
- 多位数据选择/分配器
  - **多路数据分配器的作用**：以 DMux4 为例，如果将这个器件的 in 接为高电平，通过输出端abcd的电平就可以判断 sel 是什么数。实际上就组成了一个 2-4 译码器。

# 课程内容简单总结

**Unit 1.1 Boolean Function**: 涉及布尔逻辑基本运算和真值表的介绍，可直接跳过

**Unit 1.2 Boolean Function**:布尔表达式和真值表之间的转换关系，依然可以跳过

**Unit 1.3 Logic Gates** ： 介绍基本的逻辑门及其电路实现原理
需要实现的基本器件

**Unit 1.4 Hardware Simulation**： 介绍硬件描述语言（HDL）,可快速过一遍，实现一个异或门（xor.hdl）

**Unit 1.6 Multi-Bit Buses**: 将一组bit视为一个实体而称为“bus”，类似C语言中的数组概念，不过元素为bit而不是byte。
