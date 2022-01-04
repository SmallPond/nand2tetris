// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.


    // while(1) {
    //     if(is_key_down()) {
    //         fill();  // 填充当前像素点
    //     } else { 
    //         clear(); // 清除当前像素点
    //     }
    //  }
    

// Put your code here.

    // 键盘的MMIO地址为 @KBD = 24576
    // 16384-24575 为屏幕的地址(8K大小) @SCREEN = 16384 获取SCREEN当前点
    @24576 
    D = A 

    // R0 保存屏幕当前输出的地址  
    @SCREEN 
    D = A  
    @0
    M = D   

(CHECK)
    // 读 kbd 寄存器，查看是否有按键按下
    @KBD 
    D = M
    @FILL
    D; JGT   // 按键按下则开始填充

    // 没按键按下就清屏
    @CLEAR 
    0; JMP

(FILL)
    // 判断是否到最大地址
    @24576 
    D = A
    @0 
    D = D - M
    // 屏幕输出超过了最大值就进入下一次CHECK，否则开始填充像素点
    @CHECK 
    D; JEQ          // 用 JEQ 的条件判断的话，在清除是会多写一次 24576 这个地址


    @0
    D = M
    // 取当前点
    A = M     
    // -1 -> 0b1111111_11111111  黑色像素
    // 1  -> 0b0000000_00000001  白色像素
    M = -1

    @0
    M = D + 1 // 递增显示位置

    @CHECK 
    0; JMP

(CLEAR)
    // 起始像素点
    @SCREEN
    D = A
    @0
    D = D - M
    @CHECK 
    D; JGT     // 相等则表示已经位于SCREEN
    // 不相等则开始向下填充
    @0
    D = M 
    A = M // 选中当前像素 MMIO 地址
    M = 0 // 显示白色
    // 当前地址减 1
    @0
    M = D - 1 

    @CHECK
    0; JMP