# Evaluating Multilingual Feature Extraction Models for Abstract Classification: A Simulation Study

## Introduction

Multilingual Feature Extractors are vital tools for handling text classification tasks, including abstract classification, across multiple languages. These models allow us to gather insights from diverse languages, fostering better understanding and comparative analysis.

This repository supports a simulation study aimed at evaluating the effectiveness of different Multilingual Feature Extractors for Abstract Classification. The study findings are detailed in the corresponding paper, and this README provides the necessary guidance for reproducing the study: from installation of models, through simulations, to result analysis. Our aim is to help inform and guide the future of multilingual text classification.


## Installation

The simulations require several Python packages that you can install using pip. We highly recommend setting up a virtual environment before proceeding with the installation to ensure that the package versions used in this project do not conflict with those in other projects.

Python version 3.8 or above is required.

We've included a requirements.txt file in the repository containing all the necessary dependencies. You can install all required packages using the following command:

```bash
pip install -r requirements.txt
```

> Note: The multilingual-feature-extractors package is installed directly from its GitHub repository. For more information on all models, please refer to the [repository](https://github.com/Robdboer/Multilingual-Feature-Extractors) of the multilingual-feature-extractors.

## Data preparation

The data used in this study is derived from a systematic review of [Hamilton & Murphy (2023)](https://osf.io/3u982/).

To fetch the data:

1. Data Retrieval: Run the `get_data.bat` file located in the `raw_data/scripts` directory. This script uses datahugger to download the data from the provided DOI.

2. Data Storage: Upon successful retrieval, the data will be stored in the `raw_data/data` folder. The file is named `C.Hamilton Songs Systematic Review data.csv`.

Before the data can be used in the simulation study, it needs to undergo the following preprocessing steps:

1. Cleaning: This involves removing irrelevant features and handling missing values.

2. Data Splitting: The cleaned data is then divided into four distinct sets to serve the simulation needs. The specific proportions of these sets depend on the requirements of the study.

These preprocessing operations can be performed by running the provided Jupyter notebook named Preprocess_Hamilton_raw.ipynb found in the data/scripts directory. After executing all cells in the notebook, the four preprocessed datasets are automatically stored in the respective simulation data folders.

For a more detailed step-by-step guide on data preprocessing, refer to the README file in the raw_data directory: `raw_data/readme.md`.


## Simulations

The simulation study involves evaluating ten different models on four datasets using both SVM and Logistic classifiers, and two prior knowledge sets, yielding a total of 160 simulations. To streamline the process and efficiently manage resources, these simulations are split into two sets, each associated with a different "prior knowledge seed".

A "prior knowledge seed" defines the starting prior knowledge papers for each set of simulations, allowing us to test model performance under different initial states.

To conduct the simulations:

1. Navigate to `simulations/prior-knowledge-1` and run the jobs.bat file. This initiates the first 80 simulations.

2.  Once the first set of simulations finishes, navigate to `simulations/prior-knowledge-2` and again run the jobs.bat file for the remaining 80 simulations.

This structured approach ensures an efficient use of computational resources and enables easier tracking and troubleshooting of the simulation process.


## Results

Once all simulations are completed, you can proceed with processing the results.

To do this, run the provided Jupyter notebook named `Simulation_Results.ipynb` located in the `scripts` folder. This notebook performs the following tasks:

1. Copies all simulation state files into a newly created directory `simulations/state_files`.

2. Extracts essential evaluation metrics from the `.asreview` state files and stores them in a DataFrame.

3. Generates final tables, charts, and recall plots.

After executing all cells in `Simulation_Results.ipynb`, you'll find the final tables and charts within the notebook itself. You may also choose to export these for further use or presentation.


## License

This project is licensed under the terms of the MIT license. For more information, see the [LICENSE](https://github.com/Robdboer/Multilingual-Feature-Extractors-Study/blob/main/LICENSE) file in the root of this repository.

## Contact information

Rob den Boer

R.j.s.denboer@students.uu.nl

Utrecht University

ASReview
