# Here you can extend the default settings.
Settings.dragonVersion = 5
Settings.defaultBrowser = "Google Chrome"

Settings.extend "translations",
  "calisto": "kallisto"
  "callisto": "kallisto"
  "e-mail": "email"
  "jean": "gene"
  "anti-": "anti"
  "pre-": "pre"
  # biology specific
  "chip sequencing": "ChIP-Seq"
  "pack bio": "PacBio"
  "rna seek": "RNA-Seq"
  "arnie seek": "RNA-Seq"
  "de seek": "DESeq"
  "eb seek": "EBSeq"
  "bit seek": "BitSeq"
  "edger": "edgeR"

Homonyms.values.push ["atom", "adam"]
Homonyms.values.push ["pool", "pull"]
Homonyms.values.push ["layer", "lair"]
Homonyms.values.push ["one", "won"]
Homonyms.values.push ["pears", "pairs"]
Homonyms.values.push ["some", "sum"]
Homonyms.initialize()

Settings.extend "abbreviations",
  "auxiliary": "aux"
  "professor": "Prof. "
  "phd": "PhD"
  'doctor': 'Dr. '
  "Company": "Co."
  "kallisto": "kal"
  "index": "idx"
  "dictionary": "dict"
  "estimate": "est"
  'example given': 'e.g.'
  'password': 'passwd'
  "python": "py"
  "repeat": "rep"
  "simulation": "sim"
  "connection": "con"
  "current": "cur"
  "national science foundation": "NSF"
  "national institute of health": "NIH"
  'numpy': 'np'
  "sequence": "seq"
  "separator": "sep"
  "substitute": "sub"
  user: "usr"
  "exponent": "exp"
  "square root": "sqrt"
  "directories": "dirs"
  "volcano": "vol"
  # these help with R
  "absolute": "abs"
  "aesthetic": "aes"
  "correlation": "cor"
  "covariance": "cov"
  "diagonal": "diag"
  "empirical distribution": "ecdf"
  "geometry": "geom"
  "some": "sum"
  "statistic": "stat"
  "limit": "lim"
  "observation": "obs"
  "points": "pnts"
  "probability": "prob"
  "probabilities": "probs"

# Settings.extend "codeSnippet",

Settings.extend "shellCommands",
  "secure": "ssh "
  "socks proxy": "ssh -D localhost:2020 "
  "trexargs": "xargs "
  "copy recursive": "cp -rf "
  'pseudo-': 'sudo '
  "said": "sed "
  "grep": "grep "
  "hawk": "awk "
  "touch": "touch "
  "special sink": "rsync -ravh"
  "long": "ls -lh "
  "our sink": "rsync -rv "
  "see make": "cmake .."
  "shuffle": "shuf "
  "tale": "tail "

Settings.extend "directories",
  "bears": "~/analysis/bears_analyses"
  "kallisto": "~/dev/kallisto"
  "sleuth": "~/dev/sleuth/R"
  "dev": "~/dev"
  "teach": "~/teach/fa15"
  "voice": "~/voicecode/commando"

Settings.extend "websites",
  "amazon": "https://amazon.com"
  "calendar": "https://calendar.google.com"
  "facebook": "https://facebook.com"
  "kallisto": "https://github.com/pachterlab/kallisto"
  "sleuth": "https://github.com/pachterlab/sleuth"
  "solution": "https://github.com/berkeley-stat243/stat243-fall-2015-ps"
  "teach": "https://github.com/berkeley-stat243/stat243-fall-2015"
  "trello": "https://trello.com/"
  "twitter": "https://twitter.com"
  "yelp": "https://yelp.com"
  # VoiceCode specific
  "voicecode": "http://localhost:5000/"
  "commands": "http://localhost:5000/commands"
  "vocab": "http://localhost:5000/vocab"

Settings.extend "repetitionWords",
  thrice: 3

Settings.extend "codeSnippets",
  code: 'code'
  fun: "fun"
  lap: "lap"
  sap: "sap"

Settings.extend "vocabulary", [
  "localhost"
  "devel"
  "heroku"
  "vimium"
  "webflow"
  "kadira"
  "flexymike"
  'geom'
  "glob"
  "gumroad"
  "limma"
  "linux"
  "mup init"
  "mup deploy"
  "mup reconfig"
  "mup setup"
  "mup logs"
  "mup start"
  "mup stop"
  "mup restart"
  'numpy'
  'pachter'
  "piss"
  'puente'
  "smartnav"
  'sim'
  "tmux"
  "transcriptome"
  'vectorization'
  'vectorize'
  "voom"
  'wald'
  "viglink"
  "emoji"
]

Settings.extend "vocabularyAlternate",
  "pop shops": "popshops"
  "call D": "kaldi"
  "E numb": "enum"
  "a sink": "async"
  "stroojie": "stratogee"
  "node JS": "nodejs"
  "eq tl": "eqtl"
  "q tl": "qtl"

Commands.changeName "scrish", "scrump"
Commands.changeName "questo", "questy"

Settings.extend "applications",
  keynote: "Keynote"
  transmission: "Transmission"
