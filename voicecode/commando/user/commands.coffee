# add any custom commands here
Commands.create
  # combinations
  'nudgle it':
    description: 'remove a space before the adjacent word on the left. ' +
    'and go to next word'
    tags: ['cursor', 'space', 'deleting', 'left', 'combo', 'user']
    repeatable: true
    action: ->
      @key 'left', 'option'
      @key 'delete'
      @do 'shunkrish'
  # modifiers
  # moving
  "peg":
    description: "go back 1 word"
    repeatable: true
    tags: ["cursor", "user"]
    action: ->
      @do "shunkrim"
  "fran":
    description: "go forward 1 word"
    repeatable: true
    tags: ["cursor", "user"]
    action: ->
      @do "shunkrish"
  "limp":
    description: "go left 1 character"
    repeatable: true
    tags: ["cursor", "user"]
    action: ->
      @key "left"
  # shell
  "find here":
    description: "insert a shell command for finding files from this directory"
    tags: ["shell", "user"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @string "find . -name ''"
      @key "Left"
  "h top":
    description: "insert 'htop' in the shell"
    tags: ["shell", "user"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @string "htop"
      @key "return"
  "open here":
    description: "open finder here"
    tags: ["shell", "user"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @string "open ."
      @key "Return"
  # "pseudo-":
  #   autoSpacing: "normal normal"
  #   multiPhraseAutoSpacing: "normal normal"
  #   description: "Enter 'sudo ' if in a terminal or 'pseudo' otherwise."
  #   tags: ["shell", "user"]
  #   action: ->
  #     switch @currentApplication()
  #       when "iTerm" or "Terminal"
  #         @string "sudo"
  #       else
  #         @string "pseudo"
  "shell pseudo-":
    autoSpacing: "normal normal"
    multiPhraseAutoSpacing: "normal normal"
    description: "Enter 'sudo' unconditionally."
    tags: ["user"]
    action: ->
      @string "sudo "
  "secure copy":
    description: "scp in the shell"
    tags: ["shell", "user"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @string "scp -r "
  "trexargs":
    autoSpacing: "normal normal"
    multiPhraseAutoSpacing: "normal normal"
    description: "insert 'xargs'"
    repeatable: false
    tags: ["shell", "user"]
    action: ->
      @string "xargs"
  "vert pie three":
    description: "enable a python 3 virtual environment"
    tags: ["virtualenv", "shell", "user"]
    triggerScopes: ['iTerm', 'Terminal']
    repeatable: false
    action: ->
      @string "workon py3"
      @key "return"
  "vert pie two":
    description: "enable a python 2 virtual environment"
    tags: ["virtualenv", "shell", "user"]
    triggerScopes: ['iTerm', 'Terminal']
    misspellings: ["virtual python to"]
    repeatable: false
    action: ->
      @string "workon py2"
      @key "return"
  # symbols
  "dandy":
    tags: ["symbols", "user"]
    continuous: false
    action: ->
      @string " && "
  "death star":
    tags: ["symbols", "user"]
    action: ->
      @string " * "
  "super banquall":
    tags: ["symbols", "user"]
    action: ->
      @string " !== "
  "super longqual":
    tags: ["symbols", "user"]
    action: ->
      @string " === "
  "laip":
    description: "alias to 'prex'"
    repeatable: true
    tags: ["cursor", "symbol", "user"]
    action: ->
      @do "prex"
  "sky return":
    description: "press shift + return"
    repeatable: true
    tags: ["combo", "return"]
    action: ->
      @key 'return', 'shift'
  'despike':
    description: "inserts a pipe with a space in front of it"
    tags: ['symbol', "user"]
    action: ->
      @string " | "
  'demin':
    autoSpacing: "auto never"
    multiPhraseAutoSpacing: "auto never"
    description: "inserts a space then a ' -'. useful for arguments at the ' +
    'command line"
    tags: ['symbol', "user"]
    action: ->
      @string " -"
  "mindy":
    tags: ["symbol", "user"]
    continuous: false
    action: ->
      @string "- "
  'longdemin':
    autoSpacing: "auto never"
    multiPhraseAutoSpacing: "auto never"
    description: "inserts a space then a ' --'. useful for arguments at the" +
    " command line"
    tags: ['symbol', "user"]
    action: ->
      @string " --"
  # window management
  "appwin":
    description: "open 'Application Window' (assumes it is bound to 'F3'" +
    " in system preferences)"
    misspellings: ["app when"]
    tags: ["window", "user"]
    action: ->
      @key 'f3'
  "hyper left":
    description: "move a window to the left using hyperdock"
    tags: ["window", "user"]
    action: ->
      @key 'left', 'control option'
  "hyper right":
    description: "move a window to the right using hyperdock"
    tags: ["window", "user"]
    action: ->
      @key 'right', 'control option'
  "hyper up":
    description: "move a window up using hyperdock"
    tags: ["window", "user"]
    action: ->
      @key 'up', 'control option'
  "hyper down":
    description: "move a window down using hyperdock"
    tags: ["window", "user"]
    action: ->
      @key 'down', 'control option'
  "mishcon":
    description: "open mac 'Mission Control'"
    tags: ["window", "user"]
    action: ->
      @openApplication "Mission Control"
  'totchy':
    grammarType: 'individual'
    description: 'close all windows in application'
    tags: ['window', 'navigation', "user"]
    action: ->
      @key 'W', 'command shift'

  # words
  "shakemake":
    autoSpacing: "normal normal"
    multiPhraseAutoSpacing: "normal normal"
    description: "insert 'snakemake'"
    tags: ["words", "user"]
    action: ->
      @string "snakemake"
  "shakefile":
    autoSpacing: "normal normal"
    multiPhraseAutoSpacing: "normal normal"
    description: "insert 'Snakefile'"
    tags: ["words", "user"]
    action: ->
      @string "Snakefile"
  "oshascript":
    description: "insert 'osascript'"
    tags: ["words", "user"]
    action: ->
      @string "osascript"

  # R specific
  "rambo":
    description: "assign operator in R"
    tags: ["symbol", "user"]
    action: ->
      @string " <- "
  "nolint":
    tags: ["snippets", "user"]
    autoSpacing: "normal normal"
    multiPhraseAutoSpacing: "normal normal"
    action: ->
      @string "# nolint"
  'our pipe':
    grammarType: 'individual'
    description: 'pipe operator in R (with new line)'
    tags: ['symbol', "user"]
    action: ->
      @string ' %>%'
      @key 'return'
  'our pipes':
    grammarType: 'individual'
    description: 'pipe operator in R (with spaces)'
    tags: ['symbol', "user"]
    action: ->
      @string ' %>% '
  'our script':
    tags: ["user"]
    action: ->
      @string 'Rscript '
  'deep liar':
    grammarType: 'individual'
    description: 'insert "dplyr"'
    tags: ['symbol', "user"]
    action: ->
      @string 'dplyr'
  'roxie':
    grammarType: 'individual'
    autoSpacing: 'normal normal'
    multiPhraseAutoSpacing: 'normal normal'
    description: 'insert roxygen comment in R'
    tags: ['symbol', "user"]
    action: ->
      @string "#'"
      if @currentApplication() is "Atom"
        @key "forwardDelete"

  # Atom specific
  'pain left':
    description: 'go to the left pane'
    tags: ['atom', 'user', 'shell']
    triggerScopes: ['Atom', 'iTerm', 'Terminal']
    action: ->
      switch @currentApplication()
        when "Atom"
          @key 'k', 'command'
          @key 'left', 'command'
        when "iTerm" or "Terminal"
          @key "b", "control"
          @key 'left'
  'pain right':
    description: 'go to the right pane'
    tags: ['atom', 'user', 'shell']
    triggerScopes: ['Atom', 'iTerm', 'Terminal']
    action: ->
      switch @currentApplication()
        when "Atom"
          @key 'k', 'command'
          @key 'right', 'command'
        when "iTerm" or "Terminal"
          @key "b", "control"
          @key 'right'
  'pain down':
    description: 'go to the down pane'
    tags: ['atom', 'user', 'shell']
    triggerScopes: ['Atom', 'iTerm', 'Terminal']
    action: ->
      switch @currentApplication()
        when "Atom"
          @key 'k', 'command'
          @key 'down', 'command'
        when "iTerm" or "Terminal"
          @key "b", "control"
          @key 'down'
  'pain up':
    description: 'go to the up pane'
    tags: ['atom', 'user', 'shell']
    triggerScopes: ['Atom', 'iTerm', 'Terminal']
    action: ->
      switch @currentApplication()
        when "Atom"
          @key 'k', 'command'
          @key 'up', 'command'
        when "iTerm" or "Terminal"
          @key "b", "control"
          @key 'up'
# sublime specific
  "callup":
    description: "column selection up in sublime (pronounced 'cal-up')"
    repeatable: true
    tags: ["sublime", "user"]
    triggerScopes: ["Atom", "Sublime Text"]
    action: ->
      @key "up", "control shift"
  "calldown":
    description: "column selection down in sublime (pronounced 'cal-down')"
    repeatable: true
    tags: ["sublime", "user"]
    triggerScopes: ["Atom", "Sublime Text"]
    action: ->
      @key "down", "control shift"
  # snippets
  "teesh":
    tags: ["symbols", "user"]
    action: ->
      @string "``"
      @key "left"
  "mark block":
    kind: "action"
    description: "insert a markdown block with language decorator"
    tags: ["snippets", "user"]
    action: ->
      @string """```

      ```"""
      @key "Up"
      @key "Up"
  "mark our":
    description: "insert a markdown block with Rmarkdown decorator"
    tags: ["snippets", "user"]
    action: ->
      @string """```{r}

      ```"""
      @key "Up"
  "mark plane":
    kind: "action"
    description: "insert a plain markdown block"
    tags: ["snippets", "user"]
    action: ->
      @string """```

      ```"""
      @key "Up"
  "jet voice":
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
  "mux leave":
    description: "leave a tmux session (leaving it open)"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: ->
      @key "b", "control"
      @key 'd'
  "mux scroll":
    description: "enter scroll mode in tmux"
    tags: ["tmux", "user", "domain-specific"]
    triggerScopes: ["iTerm", "Terminal"]
    action: ->
      @key "b", "control"
      @key "["

# deal with the insertion of words that voicecode has trouble with
singleWords = [
  "brew"
  "docker"
  "fold changes"
  'gamma'
  'gulp'
  'head'
  "key"
  "lint"
  "meteor"
  "speech ware"
  "speechware"
  "print"
  "pseudoalignment"
  "quant"
  "quantile"
]
for word in singleWords
  Commands.create word,
    grammarType: "none"
    description: "insert the word '#{word}'"
    tags: ["user", "words"]

# open applications
myApplications =
  chromie: "Google Chrome"
  # subbit: "Sublime Text"
  skippy: "Skype"
  turmit: "iTerm"
  faindor: "Finder"
  # trinket: "Safari"
  slacker: "Slack"
  roman: "R"
  masseuse: "Messages"
  madame: "Atom"
_.each myApplications, (value, key) ->
  Commands.create key,
    description: "open #{value}"
    tags: ["user"]
    action: ->
      @openApplication value

# commands that require an argument
Settings["names"] =
  "wife": "puente"
  "far": "faraz"
  "hi": "haiyan"
  "kyle": "lior"
  "leroy": "lior"
  "lyle": "lior"
  "lori": "lorian"
  "mel": "melsted"
  "paul": "pall"
  "patch": "pachter"
  "poison": "poisson"
  "val": "vasilis"
  "wang": "huang"
  # mappings
  "blood": "erythropoiesis"
  "geo": "geuvadis"
Commands.create
  "brand":
    grammarType: 'textCapture'
    autoSpacing: 'normal normal'
    multiPhraseAutoSpacing: 'normal normal'
    description: "enter a name"
    tags: ["user"]
    action: (input) ->
      if input?.length
        text = @fuzzyMatch Settings.names, input.join(' ')
        @string text
  "champ brand":
    grammarType: 'textCapture'
    autoSpacing: 'normal normal'
    multiPhraseAutoSpacing: 'normal normal'
    description: "enter a name with the first character capitalized"
    tags: ["user"]
    action: (input) ->
      if input?.length
        text = @fuzzyMatch Settings.names, input.join(' ')
        text = text.charAt(0).toUpperCase() + text.slice(1)
        @string text

Settings["mathSymbols"] =
  "eta": "eta"
  "chai": "chi"
  "try": "chi"
  "c": "xi"
  "see": "xi"
  "lambda": "lambda"
  "mu": "mu"
  "row": "rho"
  "sigh": "psi"
  "tao": "tau"
  "theta": "theta"
  "up": "upsilon"
  "zeta": "zeta"
  # these are generally helpful with latex, but aren't actually math specific
  "page": "newpage"
Commands.create
  "mathsim":
    grammarType: 'textCapture'
    description: "enter math symbols"
    tags: ["user"]
    action: (input) ->
      if input?.length
        text = @fuzzyMatch Settings.mathSymbols, input.join(' ')
        @string text

Commands.create
  "ordinal":
    grammarType: "numberCapture"
    autoSpacing: "normal normal"
    multiPhraseAutoSpacing: "normal normal"
    description: "enter an ordinal number"
    tags: ["user"]
    action: (input) ->
      remainder = input %% 100
      text = input
      if (10 <= remainder and remainder <= 20) or remainder is 0
        text += "th"
      else
        mapping =
          "1": "st"
          "2": "nd"
          "3": "rd"
          "4": "th"
          "5": "th"
          "6": "th"
          "7": "th"
          "8": "th"
          "9": "th"
        remainder = remainder %% 10
        text += mapping[remainder]
      @string text

Settings["remoteHosts"] =
  "lucille": "lucille"
  "lucille to": "lucille2"
  "math": "math"
  "mcb": "mcb"
Commands.create
  "shell secure":
    grammarType: 'textCapture'
    description: "either connect to a machine or simply type 'ssh '"
    tags: ["ssh", "terminal", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: (input) ->
      text = ""
      if input?.length
        text = @fuzzyMatch Settings.remoteHosts, input.join(' ')
      @string "ssh " + text

Settings["properPunctuation"] =
  "coffee script": "CoffeeScript"
  "express": "eXpress"
  "iterm": "iTerm"
  "javascript": "JavaScript"
  "github": "GitHub"
  "latex": "LaTeX"
Commands.create
  "spellman":
    grammarType: 'textCapture'
    autoSpacing: 'normal normal'
    multiPhraseAutoSpacing: 'normal normal'
    description: "enter a properly spelled (punctuation) word"
    tags: ["user"]
    action: (input) ->
      if input?.length
        text = @fuzzyMatch Settings.properPunctuation, input.join(' ')
        @string text

# miscellaneous
# overwrite the default behavior of 'jet'
Commands.edit 'git', (command) ->
  command.grammarType = "none"

Settings.extend "translations",
  jet: "git"

Commands.extend "freshly", ->
  switch @currentApplication()
    when 'Cyberduck'
      @key 'r', 'command'

Commands.after "shell", (input) ->
  if not input?.length
    @string "shell"
Commands.after "trexargs", ->
  if @currentApplication() is "iTerm" or @currentApplication() is "Terminal"
    @string " "
