Vim�UnDo� Xo��x#Ce��r�k>�`�i0ѡzC��   =                                  `�fy    _�                    8        ����                                                                                                                                                                                                                                                                                                                            8           8           V        `�c1     �   8   :   =    �   8   9   =    5��    8                      �              �       5�_�                    9   N    ����                                                                                                                                                                                                                                                                                                                            8           8           V        `�c:    �   8   :   >      �   au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif5��    8   F                 A                    �    8   F                 A                    �    8   F                 A                    �    8   F                 A                    �    8   F                 A                    �    8   F                 A                    �    8   F                 A                    �    8   F                 A                    5�_�                   9   F    ����                                                                                                                                                                                                                                                                                                                            9   F       9   M       v   M    `�fU   	 �   8   :   >      �   au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "Terminal" | set laststatus=0 | else | set laststatus=2 | endif5��    8   F                 A                    �    8   F                 A                    �    8   F                 A                    5�_�                    9       ����                                                                                                                                                                                                                                                                                                                            9   F       9   M       v   M    `�fk   
 �   8   :   >      �   au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "term" | set laststatus=0 | else | set laststatus=2 | endif5��    8                     �                     5�_�                     9       ����                                                                                                                                                                                                                                                                                                                            9   F       9   M       v   M    `�fx    �   8   9          �   " au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "term" | set laststatus=0 | else | set laststatus=2 | endif5��    8                      �      �               5�_�                   9   F    ����                                                                                                                                                                                                                                                                                                                            9   4       9   5       v   5    `�c[    �   8   :   >      �   au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "toggleterm" | set laststatus=0 | else | set laststatus=2 | endif5��    8   F                 A                    �    8   F                 A                    �    8   F                 A                    �    8   F                 A                    �    8   F                 A                    �    8   F              	   A             	       �    8   F       	       
   A      	       
       �    8   F       
       
   A      
       
       5�_�                    9   5    ����                                                                                                                                                                                                                                                                                                                            9   4       9   5       v   5    `�e>     �   8   :   >      �   au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if string.find(bufname('%') == "toggleterm" | set laststatus=0 | else | set laststatus=2 | endif5��    8   5                  0                     �    8   5                 0                    �    8   5                 0                    �    8   5                 0                    �    8   5                 0                    �    8   <                 7                    �    8   <                 7                    �    8   <                 7                    �    8   <                 7                    �    8   <                 7                    �    8   <                 7                    �    8   <                 7                    �    8   <                 7                    �    8   <                 7                    �    8   <                 7                    5�_�                    9   Q    ����                                                                                                                                                                                                                                                                                                                            9   4       9   5       v   5    `�ep     �   8   :   >      �   au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if string.find(bufname('%'), "toggleterm" | set laststatus=0 | else | set laststatus=2 | endif5��    8   M                 H                    5�_�      	              9   [    ����                                                                                                                                                                                                                                                                                                                            9   4       9   5       v   5    `�ev    �   8   :   >      �   au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if string.find(bufname('%'), "toggleterm") ~= nil | set laststatus=0 | else | set laststatus=2 | endif5��    8   [                  V                     �    8   `                 [                    �    8   `                 [                    �    8   b                 ]                    �    8   `                 [                    5�_�      
           	   9   c    ����                                                                                                                                                                                                                                                                                                                            8   5       8   N       v   N    `�e�     �   8   :   >      �   au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if string.find(bufname('%'), "toggleterm") ~= nil or  | set laststatus=0 | else | set laststatus=2 | endif5��    8   c                  ^                     5�_�   	              
   9   g    ����                                                                                                                                                                                                                                                                                                                            8   5       8   N       v   N    `�e�    �   9   :   >    �   8   :   >      �   au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if string.find(bufname('%'), "toggleterm") ~= nil or bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif5��    8   g                  b                     �    8   g                 b                    5�_�   
                 8       ����                                                                                                                                                                                                                                                                                                                            8   5       8   N       v   N    `�e�    �   7   9   >      �   " au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif5��    7                     y                     5�_�                     9       ����                                                                                                                                                                                                                                                                                                                            8   5       8   N       v   N    `�e�    �   8   :   >      �   " au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if string.find(bufname('%'), "toggleterm") ~= nil or bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif5��    8                                           5�_�                    8        ����                                                                                                                                                                                                                                                                                                                            8          8          V       `�c-     �   7   9        5��    7                      v      �               5�_�                     8       ����                                                                                                                                                                                                                                                                                                                            8          8          V       `�c-     �   8   9   <    �   8   9   <      �   au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif5��    8                      �              �       5��