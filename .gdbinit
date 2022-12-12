source /home/focus/tools/pwndbg/gdbinit.py
set context-clear-screen on
set follow-fork-mode parent
source /home/focus/tools/splitmind/gdbinit.py
set show-tips off
python
import splitmind
(splitmind.Mind()
  .tell_splitter(show_titles=True)
  .tell_splitter(set_title="Main")
  .above(of="main", display="legend", size="80%", banner="top")
  .right(of="legend", display="disasm", size="70%")
  .right(of="disasm", display="stack", size="40%")
  .below(of="disasm",display="code", size="35%")
  .below(of="code",cmd='tty; tail -f /dev/null', size="25%", clearing=False)
  .tell_splitter(set_title='Input / Output')
  .below(of="stack", display="backtrace", size="30%")
  .show("regs", on="legend")
  .below(of="backtrace", cmd="ipython", size="30%")
).build(nobanner=True)
end
set context-code-lines 30
set context-source-code-lines 30
set context-stack-lines 10
set context-backtrace-lines 10
set context-sections  "regs args code disasm stack backtrace"%
