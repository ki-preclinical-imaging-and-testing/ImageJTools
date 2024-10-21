title = getTitle();
print("Close log to end this effect");
n_old = getSliceNumber();
while(isOpen("Log")) {
	selectImage(title);
	n_new = getSliceNumber();
	if (n_old!=n_new) {
		allwindows = getList("image.titles");
		for (i=0;i<allwindows.length;i++) {
			selectImage(allwindows[i]);
			setSlice(n_new);
		}
		n_old = n_new;
	}
	wait(10);
}