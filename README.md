# ChLeo
## A RISC Microcontroller description

This repository contains the description, in VHDL, of a microcontroller that uses RISC philosophy and Harvard Architecture, as well as the documentation with the structure of the Datapath, the control unit and its Instruction Set Architecture. In order to expose the entire process of its design and implementation, the .vhd codes as well as simulation and synthesis files can also be found.

## Setup 
The field-programmable gate array used was the Cyclone II EP2C35F672C6, in the Altera DE2 Development and Education board. In addition, Intel Quartus II was used for synthesis, implementation and programming.

## Instruction Set


|Instruction |Operation Code |Instruction Format|
|----------------|-------------------------------|-----------------------------|
|ADD|`'000000'`            |<center> C<sub>5</sub>C<sub>4</sub>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RD<sub>1</sub>RD<sub>0</sub>RS1<sub>1</sub>RS1<sub>0</sub>RS2<sub>1</sub>RS2<sub>0</sub>XXXX          |
|SUB|`'000001'`            |<center>C<sub>5</sub>C<sub>4</sub>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RD<sub>1</sub>RD<sub>0</sub>RS1<sub>1</sub>RS1<sub>0</sub>RS2<sub>1</sub>RS2<sub>0</sub>XXXX          |
|AND|`'000010'`            |<center>C<sub>5</sub>C<sub>4</sub>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RD<sub>1</sub>RD<sub>0</sub>RS1<sub>1</sub>RS1<sub>0</sub>RS2<sub>1</sub>RS2<sub>0</sub>XXXX          |
|OR|`'000011'`            |<center>C<sub>5</sub>C<sub>4</sub>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RD<sub>1</sub>RD<sub>0</sub>RS1<sub>1</sub>RS1<sub>0</sub>RS2<sub>1</sub>RS2<sub>0</sub>XXXX          |
|XOR|`'000100'`            |<center>C<sub>5</sub>C<sub>4</sub>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RD<sub>1</sub>RD<sub>0</sub>RS1<sub>1</sub>RS1<sub>0</sub>RS2<sub>1</sub>RS2<sub>0</sub>XXXX          |
|CMP|`'000101'`            |<center>C<sub>5</sub>C<sub>4</sub>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RS1<sub>1</sub>RS1<sub>0</sub>RS2<sub>1</sub>RS2<sub>0</sub>XXXXXX          |
|CMPU|`'000110'`            |<center>C<sub>5</sub>C<sub>4</sub>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RS1<sub>1</sub>RS1<sub>0</sub>RS2<sub>1</sub>RS2<sub>0</sub>XXXXXX          |
|SLL|`'000111'`            |<center>C<sub>5</sub>C<sub>4</sub>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RD<sub>1</sub>RD<sub>0</sub>RS1<sub>1</sub>RS1<sub>0</sub>RS2<sub>1</sub>RS2<sub>0</sub>XXXX          |
|SLR|`'001000'`            |<center>C<sub>5</sub>C<sub>4</sub>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RD<sub>1</sub>RD<sub>0</sub>RS1<sub>1</sub>RS1<sub>0</sub>RS2<sub>1</sub>RS2<sub>0</sub>XXXX          |
|SRA|`'001001'`            |<center>C<sub>5</sub>C<sub>4</sub>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RD<sub>1</sub>RD<sub>0</sub>RS1<sub>1</sub>RS1<sub>0</sub>RS2<sub>1</sub>RS2<sub>0</sub>XXXX         |
|IN|`'001010'`            |<center>C<sub>5</sub>C<sub>4</sub>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RD<sub>1</sub>RD<sub>0</sub>RI<sub>0</sub>XXXXXXX          |
|OUT|`'001011'`            |<center>C<sub>5</sub>C<sub>4</sub>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RD<sub>1</sub>RD<sub>0</sub>RO<sub>0</sub>XXXXXXX          |
|MOV|`'001100'`            |<center>C<sub>5</sub>C<sub>4</sub>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RD<sub>1</sub>RD<sub>0</sub>RS1<sub>1</sub>RS1<sub>0</sub>XXXXXXX          |
|ADDI|`'0100'`            |<center>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RD<sub>1</sub>RD<sub>0</sub>RS1<sub>1</sub>RS1<sub>0</sub>I<sub>7</sub>I<sub>6</sub>I<sub>5</sub>I<sub>4</sub>I<sub>3</sub>I<sub>2</sub>I<sub>1</sub>I<sub>0</sub>          |
|ANDI|`'0101'`            |<center>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RD<sub>1</sub>RD<sub>0</sub>RS1<sub>1</sub>RS1<sub>0</sub>I<sub>7</sub>I<sub>6</sub>I<sub>5</sub>I<sub>4</sub>I<sub>3</sub>I<sub>2</sub>I<sub>1</sub>I<sub>0</sub>          |
|ORI|`'0110'`            |<center>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RD<sub>1</sub>RD<sub>0</sub>RS1<sub>1</sub>RS1<sub>0</sub>I<sub>7</sub>I<sub>6</sub>I<sub>5</sub>I<sub>4</sub>I<sub>3</sub>I<sub>2</sub>I<sub>1</sub>I<sub>0</sub>          |
|XORI|`'0111'`            |<center>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RD<sub>1</sub>RD<sub>0</sub>RS1<sub>1</sub>RS1<sub>0</sub>I<sub>7</sub>I<sub>6</sub>I<sub>5</sub>I<sub>4</sub>I<sub>3</sub>I<sub>2</sub>I<sub>1</sub>I<sub>0</sub>          |
|LOAD|`'1000'`            |<center>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RD<sub>1</sub>RD<sub>0</sub>RS1<sub>1</sub>RS1<sub>0</sub>OS<sub>7</sub>OS<sub>6</sub>OS<sub>5</sub>OS<sub>4</sub>OS<sub>3</sub>OS<sub>2</sub>OS<sub>1</sub>OS<sub>0</sub>          |
|STORE|`'1001'`            |<center>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RS2<sub>1</sub>RS2<sub>0</sub>RS1<sub>1</sub>RS1<sub>0</sub>OS<sub>7</sub>OS<sub>6</sub>OS<sub>5</sub>OS<sub>4</sub>OS<sub>3</sub>OS<sub>2</sub>OS<sub>1</sub>OS<sub>0</sub>          |
|JMP|`'1010'`            |<center>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub> X OS<sub>10</sub>OS<sub>9</sub>OS<sub>8</sub>OS<sub>7</sub>OS<sub>6</sub>OS<sub>5</sub>OS<sub>4</sub>OS<sub>3</sub>OS<sub>2</sub>OS<sub>1</sub>OS<sub>0</sub>          |
|BEQ|`'1100'`            |<center>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RS2<sub>1</sub>RS2<sub>0</sub>RS1<sub>1</sub>RS1<sub>0</sub>OS<sub>7</sub>OS<sub>6</sub>OS<sub>5</sub>OS<sub>4</sub>OS<sub>3</sub>OS<sub>2</sub>OS<sub>1</sub>OS<sub>0</sub>          |
|BLT|`'1101'`            |<center>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RS2<sub>1</sub>RS2<sub>0</sub>RS1<sub>1</sub>RS1<sub>0</sub>OS<sub>7</sub>OS<sub>6</sub>OS<sub>5</sub>OS<sub>4</sub>OS<sub>3</sub>OS<sub>2</sub>OS<sub>1</sub>OS<sub>0</sub>          |
|BHT|`'1110'`            |<center>C<sub>3</sub>C<sub>2</sub>C<sub>1</sub>C<sub>0</sub>RS2<sub>1</sub>RS2<sub>0</sub>RS1<sub>1</sub>RS1<sub>0</sub>OS<sub>7</sub>OS<sub>6</sub>OS<sub>5</sub>OS<sub>4</sub>OS<sub>3</sub>OS<sub>2</sub>OS<sub>1</sub>OS<sub>0</sub>          |

 - X - `Undefined bit`
- C - `Code Operation bit`
- I - `Immediate bit`
- OS - `Offset bit`
  
  
## Datapath
![Datapath Structure](/DataPath.png)


Built by Fabio Leoli and Fernando Chalita in the Digital Systems course - UFRN. 
