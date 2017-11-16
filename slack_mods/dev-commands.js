addCommand("/reload", {
    desc: "Reload the Slack window",
    func: function reload() {
        window.location = '';
    }
})

TS.cmd_handlers['/slackdevtools'].autocomplete = true;
TS.cmd_handlers['/slackdevtools'].desc = "Open Chromium DevTools";