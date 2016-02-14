# Here you can extend the default settings.
Settings.dragonVersion = 5
Settings.defaultBrowser = "Google Chrome"
Settings.dragonApplicationName = "Dragon"

Commands.addMisspellings 'datsun', ['dotson']
Commands.addMisspellings 'selrang', ['cell rang', 'cellaring']
Commands.addMisspellings 'h top', ['each top', 'etch top']
Commands.addMisspellings "swipe", ["swype"]
Commands.addMisspellings "page down", ["patient"]

Commands.changeName "loco", "laddie"
Commands.changeName "scrish", "scrump"
Commands.changeName "seltill", "selty"
Commands.changeName "questo", "questy"

Settings.extend "translations",
  "ten x": "10X"
  "anti-": "anti"
  "multi-": "multi"
  "non-": "non"
  "pre-": "pre"
  "pseudo-": "pseudo"
  "re-": "re"
  "ass holes": "assholes"
  "ass hole": "asshole"
  "bio mart": "biomaRt"
  "bullion": "boolean"
  "by clustering": "biclustering"
  "by cluster": "bicluster"
  "calisto": "kallisto"
  "callisto": "kallisto"
  "coastal": "kallisto"
  # "coffee script": "coffeescript"
  "condo": "conda"
  "cracken": "kraken"
 # frequently misrecognized
  "debrown": " de Bruijn"
  "e-mail": "email"
  "fast a": "fasta"
  "fast q": "fastq"
  "fast cue": "fastq"
  "gopi": "gulp"
  "guitar": "tar"
  "hark 5": "h5"
  "hark five": "h5"
  "hdf five": "hdf5"
  "hdl five": "hdf5"
  "hdr five": "hdf5"
  "hds five": "hdf5"
  "intron's": "introns"
  "intron 's": "introns"
  "i'd": "I'd"
  "i've": "I've"
  "jackal": "jekyll"
  "jeans": "genes"
  "jean": "gene"
  "kaymer": "kmer"
  "meta-": "meta"
  "noel": "null"
  "pam": "bam"
  "paced": "paste"
  "pool request": "pull request"
  "prichard": "pritchard"
  "pretend": "end"
  "pseudo- alignment": "pseudoalignment"
  "rose": "rows"
  "rapper": "wrapper"
  "reeds": "reads"
  "repose": "repos"
  "roe": "row"
  "ro": "row"
  "sq light three": "sqlite3"
  "sq light": "sqlite"
  "scripps": "scripts"
  "set up": "setup"
  "seraphim": "serafim"
  "white space": "whitespace"
  "winters": "linters"
  "winter": "linter"
  # biology specific
  "chip sequencing": "ChIP-Seq"
  "pack bio": "PacBio"
  "rna seek": "RNA-Seq"
  "arnie seek": "RNA-Seq"
  "de seek": "DESeq"
  "dell seek to": "DESeq2"
  "dell seek": "DESeq"
  "eb seek": "EBSeq"
  "bit seek": "BitSeq"
  "edge our": "edgeR"
  "etch seek": "edgeR"
  "edger": "edgeR"
  "q tl": "QTL"

Homonyms.values.push ["first", "1st"]
Homonyms.values.push ["second", "2nd"]
Homonyms.values.push ["third", "3rd"]
Homonyms.values.push ["fourth", "4th"]
Homonyms.values.push ["fifth", "5th"]
Homonyms.values.push ["six", "6th"]
Homonyms.values.push ["sixth", "6th"]
Homonyms.values.push ["seventh", "7th"]
Homonyms.values.push ["eighth", "8th"]
Homonyms.values.push ["ninth", "9th"]

Homonyms.values.push ["atom", "adam"]
Homonyms.values.push ["jupiter", "jupyter"]
Homonyms.values.push ["pool", "pull"]
Homonyms.values.push ["pseudo", "sudo"]
Homonyms.values.push ["layer", "lair"]
Homonyms.values.push ["one", "won"]
Homonyms.values.push ["pears", "pairs"]
Homonyms.values.push ["some", "sum"]
Homonyms.values.push ["there", "they're", "their"]
Homonyms.values.push ["kate", "cate"]
Homonyms.values.push ["rows", "rose"]
Homonyms.values.push ["scab", "sccab"]
Homonyms.values.push ["linter", "winter"]
Homonyms.initialize()

Settings.extend "abbreviations",
  "archive": "arXiv"
  "at all": "et. al."
  "auxiliary": "aux"
  "biology": "bio"
  "bio archive": "bioRxiv"
  "bowtie": "bwt"
  "bullion": "bool"
  "boolean": "bool"
  "crisper": "CRISPR"
  "cufflinks": "cuff"
  "dispersion": "disp"
  "emphasis": "emph"
  "ensemble": "ensembl"
  "express": "xprs"
  "professor": "Prof."
  "phd": "PhD"
  'doctor': 'Dr.'
  "Company": "Co."
  "control": "ctrl"
  "kallisto": "kal"
  "knitter": "knitr"
  "index": "idx"
  "in example": "i.e."
  "jpeg": "jpg"
  "dictionary": "dict"
  "estimate": "est"
  'example given': 'e.g.'
  "experiment": "exp"
  "fraction": "frac"
  "linter": "lintr"
  "markdown": "md"
  'message': 'msg'
  "package": "pkg"
  'password': 'passwd'
  "python": "py"
  "regular expression": "regex"
  "repeat": "rep"
  "return": "ret"
  "simulation": "sim"
  "connection": "con"
  "current": "cur"
  "matrix": "mat"
  "national science foundation": "NSF"
  "national institute of health": "NIH"
  'numpy': 'np'
  "penn": "pen"
  "sequence": "seq"
  "separator": "sep"
  "server": "srv"
  "snip": "snp"
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
  "observed": "obs"
  "observation": "obs"
  "points": "pnts"
  "probability": "prob"
  "probabilities": "probs"

Settings.extend "shellCommands",
  "socks proxy": "ssh -D localhost:2020 "
  "trexargs": "xargs "
  "copy recursive": "cp -rf "
  'pseudo-': 'sudo '
  'pseudo': 'sudo '
  "said": "sed "
  "grep": "grep "
  "hawk": "awk "
  "make": "mkdir "
  "touch": "touch "
  "special sink": "rsync -ravh"
  "long": "ls -lh "
  "our sink": "rsync -rv "
  "see make": "cmake .."
  "shuffle": "shuf "
  "symbolic link": "ln -s "
  "tale": "tail "
  "tar": "tar -cvvf "
  "untar": "tar -xf "

Settings.extend "directories",
  "analysis": "~/analysis"
  "bears": "~/analysis/bears_analyses"
  "dev": "~/dev"
  "home": "~/"
  "kallisto": "~/dev/kallisto"
  "sleuth": "~/dev/sleuth/R"
  "talks": "~/Dropbox/lmcb/kallisto"
  "teach": "~/teach/fa15"
  "voice": "~/voicecode/commando"

Settings.extend "websites",
  "amazon": "https://amazon.com"
  "atom": "https://atom.io/docs"
  "atom discuss": "https://discuss.atom.io/"
  "atom package": "https://atom.io/packages"
  "atom packages": "https://atom.io/packages"
  "bit bucket": "https://bitbucket.org/"
  "bears": "https://github.com/pachterlab/bears_analyses"
  "calendar": "https://calendar.google.com"
  "facebook": "https://facebook.com"
  "get": "https://github.com/"
  "kallisto": "https://github.com/pachterlab/kallisto"
  "pimentel": "https://pimentel.github.io/"
  "read it": "https://www.reddit.com/"
  "sleuth": "https://github.com/pachterlab/sleuth"
  # "solution": "https://github.com/berkeley-stat243/stat243-fall-2015-ps"
  # "teach": "https://github.com/berkeley-stat243/stat243-fall-2015"
  "trello": "https://trello.com/"
  "twitter": "https://twitter.com"
  "whether": "http://www.weather.com/weather/hourbyhour/l/94709:4:US"
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
  "bayes"
  "convolutional"
  "debrown"
  "devel"
  "docker"
  "empirical bayes"
  "heroku"
  "vimium"
  "webflow"
  "conda"
  "kadira"
  "kaymer" # to help with 'kmer'
  "kmer"
  "erythropoiesis"
  "flexymike"
  "frequentist"
  'geom'
  "glob"
  "gumroad"
  "localhost"
  "limma"
  "linter"
  "linux"
  "lodash"
  "mart"
  "mup init"
  "mup deploy"
  "mup reconfig"
  "mup setup"
  "mup logs"
  "mup start"
  "mup stop"
  "mup restart"
  "neural network"
  "neural networks"
  "node"
  'numpy'
  'pachter'
  "piss"
  "paydoom"
  "payjeep"
  "pseudoalignment"
  'puente'
  "selty"
  "smartnav"
  'sim'
  "tar"
  "tmux"
  "transcriptome"
  "untar"
  'vectorization'
  'vectorize'
  "voom"
  'wald'
  "viglink"
  "emoji"
  # combinations
  "champ thanks"
  "smash dev tools"
  "smash debug once"
  "snake sleuth live"
  "snake sleuth prep"
  "snake sleuth single cell"
]

Settings.extend "vocabularyAlternate",
  "pop shops": "popshops"
  "call D": "kaldi"
  "E numb": "enum"
  "h 5": "h5"
  "hark 5": "h5"
  "fast a": "fasta"
  "fast q": "fastq"
  "fast cue": "fastq"
  "a sink": "async"
  "stroojie": "stratogee"
  "node JS": "nodejs"
  "eq tl": "eqtl"
  "q tl": "qtl"

Settings.extend "applications",
  activity: "Activity Monitor"
  disc: "Disk Utility"
  duck: "Cyberduck"
  "spread": "Microsoft Excel"
  keynote: "Keynote"
  "script editor": "Script Editor"
  "latex": "LaTeXiT"
  "private": "Private Internet Access"
  studio: "RStudio"
  transmission: "Transmission"
  video: "vlc"
  word: "Microsoft Word"
