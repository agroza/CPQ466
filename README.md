# CPQ466
COMPAQ Prolinea 4/66 Startup Message

## Synopsis

I recently restored a [COMPAQ Prolinea 4/66](http://www.alexandrugroza.ro/microelectronics/repair-maintenance/compaq-prolinea-466/index.html) desktop PC from the early '90s. It was a fun project, nonetheless.\
While watching various videos on YouTube related to vintage COMPAQ hardware, I stumbled upon an old server that displayed a message during the SCSI initialization sequence. Nothing out of the ordinary, but the COMPAQ text was colored in red.

Well, I instantly thought about adding such a message to the Prolinea boot sequence. And since altering the BIOS was out of discussion, I quickly resorted to writing a small program that would display the machine name and type, highlighting the COMPAQ text.\
That's sufficiently a motivation to jump on the keyboard and start programming. What I like about computer programming is that there are so many ways to solve the same problem.

Not surprisingly, I chose assembly language (again), and tried to avoid all MS-DOS interrupt service functions (INT 21h). Thus, I switched my attention to VGA ROM BIOS INT 10h. Since I hardly used function 0Eh (teletype output), and never used function 13h (write string), I decided to give them a try.\
If the code isn't very clear, that's because I chose to minimize it as much as possible. I'm still amazed by the power and effectiveness of the x86 assembly language: the executable program is only 66 bytes.

I just added a simple line to ```autoexec.bat``` and now, at every startup, the system displays the ${\textsf{\color{red}COMPAQ} \textsf{ Prolinea 4/66}}$ message.

```
c:\cpq466.com
```
