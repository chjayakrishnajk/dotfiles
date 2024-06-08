//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"Bat:", "~/.config/dwmblocks/scripts/bat.sh", 60,2},
	{"Mem:", "~/.config/dwmblocks/scripts/mem.sh",	30,		0},
	{"","~/.config/dwmblocks/scripts/time.sh",1,1},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
