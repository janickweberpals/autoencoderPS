
install.packages('pak')
pak::pak('tidyverse')
pak::pak('survival@3.5-8')
pak::pak('reticulate')
pak::pak('here@1.0.1')

library(reticulate)

python <- reticulate::install_python("3.10:latest")

virtualenv_install(
    envname = "r-tabpfn",
    packages = c("numpy", "tabpfn", "tensorflow", "keras", "scipy", "pandas", "scikit-learn"),
    python = python
    )

# check the install:
py_list_packages(envname = "r-tabpfn", type = "virtualenv")
pak::pak('keras3')
pak::pak('tensorflow')

library(keras3)
library(tensorflow)
keras3::install_keras(
  python_version = "3.10",
  backend = "tensorflow", 
  envname = "r-tabpfn"
  )

reticulate::use_virtualenv("r-tabpfn")
py_config()
mnist <- dataset_mnist()
