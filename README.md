# AddSubMovSX
coded in x86 assembly language <br>
This program implements addition and subtracion operations for signed values <br>

The following directions where given:
1) using the 32 bit register perform the following arithmetic bResult = bNum01 + bNum02 - bNum03, display bResult
2) using the 32 bit register perform the following arithmetic wResult = wNum01 + wNum02 - wNum03, display wResult
3) using the 32 bit register perform the following arithmetic dwResult = dwNum01 + dwNum02 - dwNum03, display dwResult
4) using the 16 bit register perform the following arithmetic wResult = 60000 - wNum01 + 8092 - wNum03, display wResult
5) using the 16 bit register perform the following arithmetic wResult = wNum02 - 1 - wNum03 + 2400, display wResult
6) using the 32 bit register perform the following arithmetic dwResult = bNum02 + wNum03 - bNum01 + 1, display dwResult
7) using the 32 bit register perform the following arithmetic deResult + -bNum01 + dwNum03 - wNum01 + 1024, display dwResult

<br> In order to run this code you will need to modify and upload to vsCode or download the following zip files: <br>
<b> masm615.zip</b> <br>
<b> Irvine.zip</b> <br>
<b> Satterley_ASM.zip</b> <br>
and store them in the C drive of your device. <br> 

Then go to the search bar at the bottom of your screen and type the letters CMD to open your command prompt. <br>
Next type or copy and paste the following lines to create an executable file and execute the program. <br> 
<b> cd C:\Satterley_ASM </b> <br>
<b> make32 Meghan-Satterley_AddSubMovSX </b> <br> <br>
You should see the following files appear in your folder directory <br>
![make32_AddSubMovSX](https://user-images.githubusercontent.com/114275745/233753755-325ca696-1c71-43fe-8b25-f7c0c77c8ad7.png)
<br> <br> Lastly type the following line to execute the program <br>
<b> Meghan-Satterley_AddSubMovSX </b> <br> <br>
The following will result if executed correctly <br>
![AddSubMovSX_Exe](https://user-images.githubusercontent.com/114275745/233753825-43455002-4eb8-47f0-ad1d-2b838295d3d4.png)
<br> <br> The complete assembly program has 12 variables (4 in each set of 3 different data sizes), 
<br> and seven separate memory dumps of the result of each given equation
<br> the purpose of this program is to show an understanding of basic data manipulation and proper register use.
