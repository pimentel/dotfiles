# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"


# atom.config.set('r-exec.whichEngine', 'Terminal')
atom.config.set('r-exec.whichEngine', 'R.app')
atom.config.set('r-exec.advancePosition', false)
#atom.config.set('r-exec.advancePosition', true)
atom.config.set('r-exec.focusWindow', false)
# atom.config.set('r-exec.focusWindow', true)
