# add any custom commands here
Commands.create
  # dragon specific
  "snore":
    description: "tell dragon to go to sleep"
    tags: ["dragon", "user"]
    action: ->
      @do "sleepy time"
  # cursor navigation and text modification
  "jab":
    description: "insert a space"
    findable: " "
    repeatable: true
    misspellings: ["jeff"]
    aliases: ["jabby"]
    tags: ["cursor", "user"]
    action: (input) ->
      @do "skoosh"
  "sky return":
    description: "press shift + return"
    repeatable: true
    tags: ["combo", "return"]
    action: ->
      @key 'return', 'shift'
  "peg":
    description: "go back 1 word"
    repeatable: true
    tags: ["cursor", "user"]
    action: (input) ->
      @do "shunkrim"
  "fran":
    description: "go forward 1 word"
    repeatable: true
    tags: ["cursor", "user"]
    action: (input) ->
      @do "shunkrish"
  "limp":
    description: "go left 1 character"
    repeatable: true
    tags: ["cursor", "user"]
    action: ->
      @key "left"
  "rimp":
    description: "go right 1 character"
    repeatable: true
    tags: ["cursor", "user"]
    action: ->
      @key "right"
  'nudgle it':
    description: 'remove a space before the adjacent word on the left. and go to next word'
    tags: ['cursor', 'space', 'deleting', 'left', 'combo', 'user']
    repeatable: true
    action: ->
      @key 'left', 'option'
      @key 'delete'
      @do 'shunkrish'
  # helpful commands for the shell
  "find here":
    description: "insert a shell command for finding files from this directory"
    tags: ["shell", "user"]
    triggerScopes: ['iTerm', 'Terminal']
    action: (input) ->
      @string "find . -name ''"
      @key "Left"
  "trexargs":
    description: "insert 'xargs'"
    repeatable: false
    tags: ["shell", "user"]
    action: ->
      @string "xargs "
  "virtual python three":
    description: "enable a python 3 virtual environment"
    tags: ["virtualenv", "shell", "user"]
    triggerScopes: ['iTerm', 'Terminal']
    repeatable: false
    action: ->
      @string "workon py3"
      @key "return"
  "virtual python two":
    description: "enable a python 2 virtual environment"
    tags: ["virtualenv", "shell", "user"]
    triggerScopes: ['iTerm', 'Terminal']
    misspellings: ["virtual python to"]
    repeatable: false
    action: ->
      @string "workon py2"
      @key "return"
  "kill line":
    description: "delete the entire line"
    tags: ["shell", "user"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @key "u", "control"
  # mostly symbols to help with different types of input
  'totchy':
    grammarType: 'individual'
    description: 'close all windows in application'
    tags: ['window', 'navigation', "user"]
    action: (input) ->
      @key 'W', 'command shift'
  'despike':
    description: "inserts a pipe with a space in front of it"
    tags: ['symbol', "user"]
    action: (input) ->
      @string " | "
  'demin':
    description: "inserts a space then a ' -'. useful for arguments at the command line"
    tags: ['symbol', "user"]
    action: ->
      @string " -"
  'longdemin':
    description: "inserts a space then a ' --'. useful for arguments at the command line"
    tags: ['symbol', "user"]
    action: (input) ->
      @string " --"
  # R specific
  "rambo":
    description: "assign operator in R"
    tags: ["symbol", "user"]
    action: (input) ->
      @string " <- "
  'our pipe':
    grammarType: 'individual'
    description: 'pipe operator in R (with new line)'
    tags: ['symbol', "user"]
    action: (input) ->
      @string ' %>%'
      @key 'return'
  'our pipes':
    grammarType: 'individual'
    description: 'pipe operator in R (with spaces)'
    tags: ['symbol', "user"]
    action: (input) ->
      @string ' %>% '
  'deep liar':
    grammarType: 'individual'
    description: 'insert "dplyr"'
    tags: ['symbol', "user"]
    action: (input) ->
      @string 'dplyr'
  'roxie':
    grammarType: 'individual'
    description: 'insert roxygen comment in R'
    tags: ['symbol', "user"]
    action: (input) ->
      @string "#' "
  "shakemake":
    description: "insert 'snakemake'"
    tags: ["words", "user"]
    action: ->
      @string "snakemake "
  "shakefile":
    description: "insert 'Snakefile'"
    tags: ["words", "user"]
    action: ->
      @string "Snakefile"
  # sublime specific
  "callup":
    description: "column selection up in sublime (pronounced 'cal-up')"
    repeatable: true
    tags: ["sublime", "user"]
    triggerScopes: ["Sublime Text"]
    action: ->
      @key "up", "control shift"
  "calldown":
    description: "column selection down in sublime (pronounced 'cal-down')"
    repeatable: true
    tags: ["sublime", "user"]
    triggerScopes: ["Sublime Text"]
    action: ->
      @key "down", "control shift"
  # snippets
  ## markdown blocks
  "mark block":
    description: "insert a markdown block with language decorator"
    tags: ["snippets", "user"]
    action: (input) ->
      @string """```{}

      ```"""
      @key "Up"
      @key "Up"
      @key "Right"
  "mark plane":
    kind: "action"
    description: "insert a plain markdown block"
    tags: ["snippets", "user"]
    action: (input) ->
      @string """```

      ```"""
      @key "Up"
  "jet commit voice":
    description: "insert a git commit message with a voice code tag"
    tags: ["git", "user", "domain-specific"]
    action: ->
      @do "jet commit"
      @string " #vc"
      @key "left"
      @key "left"
      @key "left"
      @key "left"
  "jet log":
    description: "insert git lg"
    tags: ["git", "user", "domain-specific"]
    action: ->
      @string "git lg"
      @key "return"
  # tmux
  "mux list":
    description: "tmux list"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @string "tmux ls"
      @key "return"
  "mux new":
    description: "create a new named tmux session"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @string "tmux new -s "
  "mux attach":
    description: "attach an existing tmux session"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @string "tmux attach -t "
  "mux kill":
    description: "kill an existing tmux session"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @string "tmux kill-session -t "
  "mux vertical":
    description: "create a vertical split"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @key "b", "control"
      @key "%"
  "mux horizontal":
    description: "create a horizontal split"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @key "b", "control"
      @key '"'
  "mux left":
    description: "go left on a window split"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @key "b", "control"
      @key 'left'
  "mux right":
    description: "go right on a window split"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @key "b", "control"
      @key 'right'
  "mux up":
    description: "go up on a window split"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @key "b", "control"
      @key 'up'
  "mux down":
    description: "go down on a window split"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @key "b", "control"
      @key 'down'
  "mux leave":
    description: "leave a tmux session (leaving it open)"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @key "b", "control"
      @key 'd'

Commands.addMisspellings 'selrang', ['cell rang', 'cellaring']
Commands.addMisspellings "messy", ["messi"]

# this is for dealing with the insertion of words that voicecode has trouble with
singleWords = [
  "brew"
  "flexy mike"
  "flexymike"
  'gamma'
  'head'
  "key"
  "meteor"
  "transcriptome"
  "speech ware"
  "speechware"
  'numpy'
  "prob"
  "probs"
  "print"
  "tmux"
  'vectorization'
  'vectorize'
  "quantile"
]
for word in singleWords
  Commands.create word,
    grammarType: "none"
    description: "insert the word '#{word}'"
    tags: ["user", "words"]

myApplications =
  chromie: "Google Chrome"
  subbit: "Sublime Text"
  skippy: "Skype"
  turmit: "iTerm"
  # maylap: "Mail"
  faindor: "Finder"
  # trinket: "Safari"
  slacker: "Slack"
  roman: "R"
  messy: "Messages"
  madame: "Atom"

_.each myApplications, (value, key) ->
  Commands.create key,
    description: "open #{value}"
    tags: ["user"]
    action: ->
      @openApplication value
