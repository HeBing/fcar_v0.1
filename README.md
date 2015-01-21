# fcar

#### Introduction
`fcar` is short for ~flexible classification and regression toolbox in genomics~. 

Simply put, `fcar` take bam files and a list genomic regions of interest as input, train models with signals in the bam files around those given regions, and predict biological activities of interest genomewide. 

Currently the models include: logistic regression with L1 penalty (Lasso regression), logistic regression with L2 penalty (Ridge regression), and random forest. Model averaging utility is also provided that averages predicted results from different models.

#### How to install

* Step 1: download source code and unzip
* Step 2: change working directory to source code folder and type
`make`

__Common issues__:
* If `boost` cannot be found (linker error), you need to check whether you have boost libraries installed. If not, check [here](). If yes, you need to add `-I path-to/boost/1.55.0/include` to your the include path, and `-L path-to/boost/1.55.0/lib` to your linker path of your gcc.

#### How to use
After installation, four exectuable program will appear in the folder: `countCoverage`, `extractFeature`, `trainModel`, `predictModel`. In command line, type the program with no arguments to see options:

* `countCoverage` count read coverage based on bam files. It takes in a file containing a list of bam file names (with full path) and a parameter setting file that sets the resolution and single-end/paired-end of the bam files. 

```sh
./countCoverage
/*-----------------------------------*/
/*            extractFeature         */
/* -i bams file list                 */
/* -p parameter setting file         */
/*-----------------------------------*/
```

An example of parameter setting file is 
```
resolution=5
windowSize=1000
pairend=0
min=0
max=10000
```

* `extractFeature` extract coverage around a given set of genomic regions (with information on biological activity of interest at those regions) from the resulted coverage files from `countCoverage`.
```sh
./extractFeature
/*-----------------------------------*/
/*            extractFeature         */
/* -i coverages file list            */
/* -t training region coordinate     */
/* -o output file                    */
/* -p parameter setting file         */
/*-----------------------------------*/
```

* `trainModel` train a specified model with resulted feature files f rom `extractFeature`.
```sh
./trainModel
/*----------------------------------*/
/*           menu_trainModel        */
/* -m method                        */
/*    LogisticRegressionL1          */
/*    LogisticRegressionL2          */
/*    SVM                           */
/*    RandomForest                  */
/* -c penalty tuning                */
/* -t training data file            */
/* -o output model                  */
/*----------------------------------*/
```

* `predictModel` predict test data using trained model from `trainModel`
```sh
/*------------------------------------*/
/*           menu_predictModel        */
/* -m method name                     */
/*    LogisticRegressionL1            */
/*    LogisticRegressionL2            */
/*    SVM                             */
/*    RandomFores                     */
/* -tm trainedModel                   */
/* -train trainFile                   */
/* -test testFile                     */
/* -o output results                  */
/*------------------------------------*/
```

#### Note:
* `fcar` uses codes from [`liblinear`](http://www.csie.ntu.edu.tw/~cjlin/liblinear/) and [`rt-rank`](https://sites.google.com/site/rtranking/) projects.
* Currently, `fcar` only works under linux.
* `fcar` requires library `boost`.
* To use the full functionality, `fcar` requires `python` to be installed. Some core programs can be used without `python` installed.
