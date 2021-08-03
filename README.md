记录一些自己魔改和编写的小工具。

# winafl/my-cmin.py
- 支持 python3
- 增加 output.txt crash_files.txt hang_files.txt 分别记录输出文件、crash 文件、 hang 文件
- 增加 -move 命令，用以移动文件，我预想的场景是：精简过程中程序卡死，我们可以把已经筛选过得文件剔除出来，会节约很多时间。但是相应的精简的效果可能会对比正常结束略差，我们进行二次精简就可以了。
- 增加 -copy 命令，用以复制文件

详细的记录在https://0xfocu5.github.io/posts/d9205468/

# pwndbg
针对不同 libc 版本的 heap 命令的一些魔改。
