# Evaluating Multilingual Feature Extraction Models for Abstract Classification: A Simulation Study

## Introduction

This repository contains the scripts and supporting files for a simulation study on Multilingual Feature Extractors for Abastract Classification. More detailed information on the study findings can be found in the paper. To guarantee reproducibility, this readme provides instructions on how to install the required feature extraction models, run the simulations and analyze the results.


## Installation

The classifier used in this simulation study is provided by the [ASReview](https://github.com/asreview) software. Which can be installed by:

```bash
pip install asreview
```

Also install essential add-ons for ASReview by:

```bash
pip install asreview-makita

pip install asreview-insights

pip install asreview-wordcloud
```

The [feature extractor models](https://github.com/Robdboer/Multilingual-Feature-Extractors) evaluated in this study were implemented in the ASReview software and can be installed by:

```bash
pip install git+https://github.com/Robdboer/multilingual-feature-extractors.git
```

*Some of the models depend on the installation of other packages, please refer to the [repository](https://github.com/Robdboer/Multilingual-Feature-Extractors) to install these required packages.

## Data preparation

The data used in this study consists of the metadata of a systematic review of Hamilton & Murphy (2023) [source](https://osf.io/3u982/) and is placed in the folder `raw_data/data` under the name `Hamilton_Download.csv`.

Together with some preprocessing, the data has to be split up into four sets for study purposes. This can be done by running the cells in the notebook  `raw_data/scripts/Preprocess Hamilton raw.ipynb`
For more detailed instructions, navigate to `raw_data/readme.md`


After running all cells, the four datasets will be put into the simulation data folders.


## Simulations

For practical reasons, the simulations were split up into two prior knowledge seeds (Folder: `simulations/prior-knowledge-x`). For both prior knowledge combinations, simulations will be run for all ten models, on the four different datasets, for both a SVM and Logistic classifier. This will result in a total of 160 simulations.

To run the first 80, navigate to the folder `simulations/prior-knowledge-1` and run the jobs.bat file.

After all simulations are finished, navigate to the folder `simulations/prior-knowledge-2` and run the jobs.bat file.


## Results

To process the results, run the cells in the notebook `scripts/Simulation Results.ipynb`.

First, all simulation state files will be copied into a newly created folder `simulations/state_files`

Then, all evaluation metrics essential for this study will be extracted out of the .asreview state files and stored in a dataframe

To obtain the final, tables, charts and recall plots, run the next cells.


## License

MIT License

## Contact information
Rob den Boer

R.j.s.denboer@students.uu.nl

Utrecht University

ASReview
