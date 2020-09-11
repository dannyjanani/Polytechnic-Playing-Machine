# Polytechnic-Playing-Machine

Enhancing a game project named Polytechnic Playing Machine, ppm using Xilinx ISE.

## Project Overview

The Polytechnic Playing Machine, ppm, has three different versions. The ppm project to be enhanced is named machine vs. machine: ppmvsm. The other two versions of the ppm game at the course website are : (i) a human player playing against a machine player, human vs machine : ppmhvsm, and (ii) two human players play against each other, human vs human : ppmhvsh. 

The ppm players, human and machine, play digits on four position displays to earn points. They play the game until one wins the game. Then, the game is restarted by resetting. The players take turns to play : Player 1 plays, then Player 2 plays, then, Player 1 plays, etc. Always, Player 1 starts the game when the FPGA is downloaded or reset. Player 1 receives a pseudo-random digit (simply random digit, RD) to start with. Player 1 may choose to play the digit or skip the play. Whether Player 1 plays or skips, when Player 2 gets its turn it receives a new random digit. It may play the random digit or skip the play. If Player 2 skips the play, Player 1 gets a new random digit and has the same two options as before : play or skip. If a player skips a play no points are subtracted. Also, both players are allowed to see the next two random digits which can help them plan their moves better. In summary, the game for each player is about playing a random digit on a position display to earn points, more than the opponent. 

The random digit is a BCD digit, i.e. it is 0 through 9. Playing the random digit on a position display is either playing it directly (overwriting) or adding it to a display. If it is a direct play, the position is stored the random digit : RD. If it is an addition, the position is added the random digit and the result is placed on the same display. In either case, if the player has an adjacency, i.e. the digit played has an identical neighbor, the player earns more points. A 2-digit code which is not visible to the players and is on the rightmost two displays can help player earn even more points. 

The largest value to play on a display is F, i.e. 15 in decimal. That is, the sum of RD and the position display value cannot be greater than 15. If the sum exceeds 15, this situation is called display overflow. If the player plays it, the digit played is the sum minus 16. For example, if a position has E and RD is 9, after the addition the position is played 14 + 9 - 16 = 7. Then, the display blinks at a high rate, signalling there is a display overflow. If the player has an adjacency, the player earns more than 7 points. If the digit played is identical to the code digit on that position, the player earns additional points. Thus, winning the game is dependent on both chance and thinking. The ppm circuit is a digital system. A digital system consists of digital circuits. Today’s digital systems are numerous. Examples of digital systems are microprocessors, computers, DVD players and iPhones. They are also complex. Consequently, special emphasis is given to the coverage of digital systems in computer science and computer engineering curricula.

The ppm digital system consists of six blocks on six schematic sheets. Blocks 1, 2, 4, 5 and 6 are core blocks : They are already designed and provided with on schematics 1, 2, 4, 5 and 6. Block 3 on schematic 3 is the Machine Play Block and students will enhance it. Schematics 4 and 6 have black boxes or macros. Students cannot see their schematic implementations, but only VHDL ones. The machine vs machine or ppmmvsm project students enahnce has two additional schematic sheets to help student enhance their project better.

## Project Goals

* Teams of 4 plan and finalize how they will enhance ppmmvsm project.
* Students may instead elect to develop their own project as long as the project involves a digital system.
* The project follows the class coverage where the initial circuits are combinational circuits.
* Blocks with sequential circuits are then designed.
* We first describe the black box view of the ppm and then the individual blocks.
* The descriptions are in the context of digital systems.
* The description is also based on the [Digilent NEXYS-4 DDR FPGA board](https://www.digikey.com/products/en/development-boards-kits-programmers/evaluation-boards-embedded-complex-logic-fpga-cpld/796?k=digilent&k=410-292&pkeyword=digilent&sv=0&sf=0&FV=-8%7C796&quantity=&ColumnSort=0&page=1&pageSize=25).
* Students will completely design Block 3 (the design of the machine player is left to students).
* Students design its intelligence level and playing strategy.
* The machine player plays according to the rules.
* The machine vs. machine ppm project uses all eight displays and all 16 LED lights. 
* That is, four aditional displays and eight additional LED lights are used compared with the human vs. human and human vs. machine projects. 
* What is shown on these outputs is as follows:
  * Displays 4 and 5 show Player 1 points.
  * Displays 6 and 7 show Player 2 points.
  * LED lights 8 to 11 show the next random digit.
  * LED lights 12 to 15 show the following random digit.
* In addition, we will use the keypad and 7-Segment Pmods to enhance the game and debug the circuits faster. 
* Finally, students can input a random digit from switches SW15-SW12 to also debug their circuits faster.

## Gallery

## Provided Materials

* 1x [Digilent NEXYS-4 DDR FPGA board](https://www.digikey.com/products/en/development-boards-kits-programmers/evaluation-boards-embedded-complex-logic-fpga-cpld/796?k=digilent&k=410-292&pkeyword=digilent&sv=0&sf=0&FV=-8%7C796&quantity=&ColumnSort=0&page=1&pageSize=25)
* 1x [Keypad](https://www.digikey.com/products/en/switches/keypad-switches/202?k=14662&pkeyword=&sv=0&sf=0&FV=-8%7C202&quantity=&ColumnSort=0&page=1&pageSize=25)
* 1x [7-Segment Pmods](https://www.adafruit.com/product/3108)

## Skills Used

* Software:
  * Xilinx ISE
  * Schematic Design
  * VHDL
  
* Knowledge Acquired: 
  * Number systems
  * Combinational circuits
  * Sequential circuits
  * Programmable components
  * Digital systems
