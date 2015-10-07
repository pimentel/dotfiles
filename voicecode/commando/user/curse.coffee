Settings["curseWords"] =
    "ass": "asshole"
    "frak": "fuck"
    "fracking": "fucking"
    "shot": "shit"

Commands.create
  'curse':
    grammarType: 'textCapture'
    description: 'insert a curse word'
    tags: ['text']
    # misspellings: ['shall', 'chell']
    continuous: true
    action: (input) ->
      if input?.length
        text = @fuzzyMatch Settings.curseWords, input.join(' ')
        @string text
