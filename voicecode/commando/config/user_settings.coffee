# Here you can extend the default settings.
Settings.dragonVersion = 5
Settings.defaultBrowser = "Google Chrome"

Settings.extend "translations",
  "calisto": "kallisto"
  "callisto": "kallisto"
  "jean": "gene"
  "anti-": "anti"
  "pre-": "pre"
  # biology specific
  "chip sequencing": "ChIP-Seq"
  "pack bio": "PacBio"
  "rna seek": "RNA-Seq"
  "arnie seek": "RNA-Seq"

Settings.extend "homonyms",
    gene: "jean"

Settings.extend "abbreviations",
  "professor": "Prof. "
  "phd": "PhD"
  "Company": "Co."
  "kallisto": "kal"
  "index": "idx"
  "python": "py"
  "simulation": "sim"
  "connection": "con"
  "current": "cur"
  "national science foundation": "NSF"
  "national institute of health": "NIH"
  "sequence": "seq"
  "exponent": "exp"
  "square root": "sqrt"
  "directories": "dirs"
  # these help with R
  "aesthetic": "aes"
  "correlation": "cor"
  "covariance": "cov"
  "empirical distribution": "ecdf"
  "geometry": "geom"
  "some": "sum"
  "statistic": "stat"
  "observation": "obs"
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
  "see make": "cmake .."
  "shuffle": "shuf "
  "tale": "tail "

Settings.extend "directories",
  "kallisto": "~/dev/kallisto"
  "sleuth": "~/dev/sleuth/R"
  "dev": "~/dev"
  "teach": "~/teach/fa15"
  "voice": "~/voicecode/commando"

Settings.extend "websites",
  "amazon": "https://amazon.com"
  "facebook": "https://facebook.com"
  "kallisto": "https://github.com/pachterlab/kallisto"
  "sleuth": "https://github.com/pachterlab/sleuth"
  "twitter": "https://twitter.com"
  "voicecode": "http://localhost:5000/"
  "commands": "http://localhost:5000/commands"
  "vocab": "http://localhost:5000/vocab"
  "yelp": "https://yelp.com"

Settings.extend "repetitionWords",
  thrice: 3

Settings.extend "codeSnippets",
  fun: "fun"
  lap: "lap"
  sap: "sap"