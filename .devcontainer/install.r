# install additional R packages
install.packages('pak', repos = 'https://r-lib.github.io/p/pak/stable/')
pak::pak('here')
pak::pak('keras')
pak::pak('tidymodels@1.3.0')