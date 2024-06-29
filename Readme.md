
![Logo](https://i.postimg.cc/k5FYC9nP/In-Shot-20240626-225254965.jpg)


# Project Title

In this project, a stack-based ALU is supposed to be designed using Verilog language.


## Tools
- modelsim


## Implementation Details

In the first section, we create a stack module whose size is determined by a specified parameter. This module takes an input opcode that specifies the type of operation to be performed. For example, if the opcode is 4, the top two stack elements are added, and the result is placed in the output. If the opcode is 5, the top two stack elements are multiplied, and the result is output. If the opcode is 6, an input value is pushed onto the stack, and if it’s 7, the top stack element is popped and placed in the output. Additionally, there is a carry bit. Four test benches are written for this module, each with a different stack size variable.
In the second section, an expression (2 * 3 + (10 + 4 + 3) * -20 + (6 + 5)) needs to be first converted to postfix form and then evaluated using the stack module from the previous section


## How to Run
In ModelSim, first, all files need to be compiled, and then simulation should be performed. The test bench file should be the top module.



## Results
stack module:
![Logo](https://i.postimg.cc/Vv326Rpx/Screenshot-2024-06-29-153119.png)
test bench stack module:
![Logo](https://i.postimg.cc/yN8K2fHj/Screenshot-2024-06-29-153329.png)
wave form report:
![Logo](https://i.postimg.cc/FK86GGs7/Screenshot-2024-06-29-154004.png)

## Related Links
Some links related to your project come here.
 - [EDK II](https://github.com/tianocore/edk2)
 - [ESP32 Pinout](https://randomnerdtutorials.com/esp32-pinout-reference-gpios/)
 - [Django Doc](https://docs.djangoproject.com/en/5.0/)


## Authors
Authors and their github link come here.
- [@Author1](https://github.com/Sharif-University-ESRLab)
- [@Author2](https://github.com/Sharif-University-ESRLab)

