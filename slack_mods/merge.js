function get_message_objects() {
    t = TS.msg_edit.current_model_ob
    return TS.model.archive_view_is_showing && t._archive_msgs ? t._archive_msgs : t.msgs
}

addCommand("/merge", {
  desc: "Merge last two messages",
  func: function(t, n) {
    let obs = get_message_objects().slice(0,10);
    var messages = [];
    for (let ob of obs) {
        if (ob.user === current_user) {
            messages.push(ob);
            if (messages.length() === 2) {
                break
            }
        }
        // TODO: Add empherial message showing error
        return
    }
  }
})