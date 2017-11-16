addCommand("/delete", {
  desc: "Delete last n messages",
  args: [
    {"name":"n messages", "optional": true}
  ],
  func: function(t, n) {
    TS.client.ui.$msgs_div.find("ts-message").slice(-(n || 1)).fadeOut("normal", function() {
      $(this).remove();
    });
  } 
})