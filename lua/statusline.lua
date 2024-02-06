local cmd = vim.cmd
local o = vim.o

cmd("highlight StatusType guibg=NONE guifg=#ffffff")
cmd("highlight StatusFile guibg=NONE guifg=#ffffff")
cmd("highlight StatusModified guibg=NONE guifg=#ffffff")
cmd("highlight StatusBuffer guibg=NONE guifg=#ffffff")
cmd("highlight StatusLocation guibg=NONE guifg=#ffffff")
cmd("highlight StatusPercent guibg=NONE guifg=#ffffff")
cmd("highlight StatusNorm guibg=none guifg=white")
o.statusline = "  "
	.. "%#StatusBuffer#"
	.. "["
	.. "%n"
	.. "]"
	.. "%#StatusFile#"
	.. "%F"
	.. "%#StatusModified#"
	.. ""
	.. "%m"
	.. "%#StatusNorm#"
	.. "%="
	.. "%#StatusType#"
	.. ""
	.. "%y"
	.. ""
	.. "%#StatusPercent#"
	.. " | "
	.. "%p%%"
	.. "%#StatusLocation#"
	.. " | "
	.. "%l:%c "
