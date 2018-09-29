# Final Year Project Reports

This repository contains the reports for my final year project [Iris](https://github.com/DeanGaffney/iris). The reports were written in LaTeX with some parts generated by a python script. The report for semester 1 can be found here [Semester 1 Report](KENTS_20067423_Report1_Dean.Gaffney.pdf) and the report for Semester 2 can be found here [Semester 2 Report](KENTS_20067423_Report2_Dean.Gaffney.pdf).

## Prerequisites

- [LaTeX](https://www.latex-project.org/get/)
- [Python 2.7 and packages (simplejson, requests, re)](https://www.python.org/download/releases/2.7/)
- [Make](http://man7.org/linux/man-pages/man1/make.1.html)

## Semester 1 Report

The semester 1 report covers the motivation, planning and designing of Iris.

## Semester 2 report

The semseter 2 report covers the implementation of Iris and the Iris agents that were used to demonstrate the functionality of Iris.

#### Iris agents
* [Android](https://github.com/DeanGaffney/iris-android)
* [Selenium](https://github.com/DeanGaffney/iris-selenium)
* [Node.js](https://github.com/DeanGaffney/iris-node)
* [MySQL](https://github.com/DeanGaffney/iris-mysql)
* [Crypto Currency Rates](https://github.com/DeanGaffney/iris-crypto-rates)

### Generating report

Both reports can be generated by running the Makefile in the root directory.

To generate the semester reports change the MAIN variable in the Makefile to point to the .tex file you want to generate a pdf for and run
```
$ make
```
in the directory of the Makefile (root).

## Built With

* [LaTeX](https://www.latex-project.org/get/)
* [Python 2.7 and packages (simplejson, requests, re)](https://www.python.org/download/releases/2.7/)
* [Make](http://man7.org/linux/man-pages/man1/make.1.html)

## Authors

* **Dean Gaffney** - *Reports, Python Script* 
* **Kieran Murphy** - *Supervisor, LaTeX Styling*

See also the list of [contributors](https://github.com/DeanGaffney/iris-report/graphs/contributors) who participated in this project.
