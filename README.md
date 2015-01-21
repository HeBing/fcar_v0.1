# fcar

#### Introduction
`fcar` is short for flexible classification and regression toolbox in genomics. Simply put, `fcar` take bam files and a list genomic regions of interest as input, train models with signals in the bam files around those given regions, and predict biological activities of interest genomewide. 

Currently the models include: logistic regression with L1 penalty (Lasso regression), logistic regression with L2 penalty (Ridge regression), and random forest. Model averaging utility is also provided that averages predicted results from different models.

#### How to install

* Step 1: download source code and unzip
* Step 2: change working directory to source code folder and type
`make`

#### How to use
After installation, four exectuable program will appear in the folder: `countCoverage`, `extractFeature`, `trainModel`, `predictModel`. In command line, type the program with no arguments to see options:

```
./countCoverage
./extractFeature
./trainModel
./predictModel
```

#### Note:
* `fcar` uses codes from `liblinear` and `rt-rank` projects.
* Currently, `fcar` only works under linux.
* `fcar` requires library `boost`.
* To use the full functionality, `fcar` requires `python` to be installed. Some core programs can be used without `python` installed.