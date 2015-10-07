# add any custom commands here
Commands.create
  # cursor navigation and text modification
  "jab":
    grammarType: "individual"
    description: "go back 1 word"
    aliases: []
    findable: " "
    repeatable: true
    tags: ["cursor"]
    action: (input) ->
      @do "skoosh"
  "peg":
    grammarType: "individual"
    description: "go back 1 word"
    aliases: []
    repeatable: true
    tags: ["cursor"]
    action: (input) ->
      @do "shunkrim"
  "fran":
    grammarType: "individual"
    description: "go forward 1 word"
    aliases: []
    repeatable: true
    tags: ["cursor"]
    action: (input) ->
      @do "shunkrish"
  'nudgle it':
    description: 'remove a space before the adjacent word on the left. and go to next word'
    tags: ['cursor', 'space', 'deleting', 'left', 'combo', 'recommended']
    repeatable: true
    action: ->
      @key 'left', 'option'
      @key 'delete'
      @do 'shunkrish'
  # helpful commands for the shell
  "find here":
    grammarType: "individual"
    description: "insert a shell command for finding files from this directory"
    aliases: []
    tags: ["shell", "user"]
    triggerScopes: ['iTerm', 'Terminal']
    action: (input) ->
      @string "find . -name ''"
      @key "Left"
  "trexargs":
    grammarType: "individual"
    description: "insert 'xargs'"
    aliases: []
    repeatable: false
    tags: ["shell", "user"]
    action: ->
      @string "xargs "
  # mostly symbols to help with different types of input
  'totchy':
    grammarType: 'individual'
    description: 'close all windows in application'
    aliases: []
    tags: ['window', 'navigation']
    action: (input) ->
      @key 'W', 'command shift'
  'despike':
    grammarType: "individual"
    description: "inserts a pipe with a space in front of it"
    aliases: []
    tags: ['symbol']
    action: (input) ->
      @string " | "
  'demin':
    grammarType: "individual"
    description: "inserts a space then a ' -'. useful for arguments at the command line"
    aliases: []
    tags: ['symbol']
    action: (input) ->
      @string " -"
  'longdemin':
    grammarType: "individual"
    description: "inserts a space then a ' -'. useful for arguments at the command line"
    aliases: []
    tags: ['symbol']
    action: (input) ->
      @string " --"
  # R specific
  "rambo":
    grammarType: "individual"
    description: "assign operator in R"
    aliases: []
    tags: ["symbol"]
    action: (input) ->
      @string " <- "
  'our pipe':
    grammarType: 'individual'
    description: 'pipe operator in R (with new line)'
    aliases: []
    tags: ['symbol']
    action: (input) ->
      @string ' %>%'
      @key 'return'
  'our pipes':
    grammarType: 'individual'
    description: 'pipe operator in R (with spaces)'
    aliases: []
    tags: ['symbol']
    action: (input) ->
      @string ' %>% '
  'deep liar':
    grammarType: 'individual'
    description: 'insert "dplyr"'
    aliases: []
    tags: ['symbol']
    action: (input) ->
      @string 'dplyr'
  'roxie':
    grammarType: 'individual'
    description: 'insert roxygen comment in R'
    aliases: []
    tags: ['symbol']
    action: (input) ->
      @string "#' "

  # snippets
  ## markdown blocks
  "mark block":
    kind: "action"
    grammarType: "individual"
    description: "insert a markdown block with language decorator"
    aliases: []
    tags: ["snippets"]
    action: (input) ->
      @string """```{}

      ```"""
      @key "Up"
      @key "Up"
      @key "Right"
  "mark plane":
    kind: "action"
    grammarType: "individual"
    description: "insert a plain markdown block"
    aliases: []
    tags: ["snippets"]
    action: (input) ->
      @string """```

      ```"""
      @key "Up"

Commands.addMisspellings 'selrang', ['cell rang', 'cellaring']
Commands.addMisspellings "messy", ["messi"]
#Commands.addMisspellings "nudgleit", ["nudgle it"]
# this is for dealing with the insertion of words that voicecode has trouble with
singleWords = [
  "brew"
  'head'
  "key"
  "meteor"
  "transcriptome"
  "touch"
  "print"
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
  maylap: "Mail"
  faindor: "Finder"
  trinket: "Safari"
  slacker: "Slack"
  roman: "R"
  messy: "Messages"

_.each myApplications, (value, key) ->
  Commands.create key,
    description: "open #{value}"
    tags: ["user"]
    action: ->
      @openApplication value
