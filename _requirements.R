
install.packages('pak')

pak::pak('tidyverse')
pak::pak('survival@3.5-8')
pak::pak('reticulate')
pak::pak('here@1.0.1')

library(reticulate)

python <- install_python()

virtualenv_install(
    envname = "r-tabpfn",
    packages = c("numpy", "tabpfn", "tensorflow", "keras", "scipy", "pandas", "scikit-learn"),
    python = python
    )

# check the install:
py_config()
py_list_packages(envname = "r-tabpfn", type = "virtualenv")
pak::pak('keras3')
keras3::install_keras(backend = "tensorflow")
