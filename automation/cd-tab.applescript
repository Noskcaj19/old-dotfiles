function run(argv) {
	app = Application.currentApplication();
	app.includeStandardAdditions = true;
	
	
	iterm = Application('iTerm2');
	iterm.includeStandardAdditions = true;
	
	var window = iterm.currentWindow();
	var tabs = window.tabs();
	
	var tabIndex = argv[0];
	
	if (tabIndex === undefined) {
		var tty = tabs.slice(-2)[0].currentSession().tty();
	} else {
		var tty = tabs.slice(tabIndex-1, tabIndex)[0].currentSession().tty();
	}

	var pid = app.doShellScript(`lsof ${tty} | (head -2 | tail -1) | tr -s ' ' | cut -d ' ' -f2`);	
	let cwd = app.doShellScript(`lsof -p ${pid} | grep 'cwd' | head -1 | tr -s ' ' | cut -d ' ' -f9`);

	iterm.write(window.currentTab().currentSession(), {text: ` cd '${cwd}';`});
}
