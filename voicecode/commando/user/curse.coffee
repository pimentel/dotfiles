Settings["curseWords"] =
  "ass": "asshole"
  "frak": "fuck"
  "fracking": "fucking"
  "fracking shot": "fucking shit"
  "shot": "shit"
  "shotty": "shitty"

Commands.create
  'curse':
    grammarType: 'textCapture'
    description: 'insert a curse word'
    tags: ['curse', 'text', 'user']
    autoSpacing: 'always always'
    continuous: true
    action: (input) ->
      if input?.length
        text = @fuzzyMatch Settings.curseWords, input.join(' ')
        @string text
