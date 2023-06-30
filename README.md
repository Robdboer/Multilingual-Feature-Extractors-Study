# Evaluating Multilingual Feature Extraction Models for Abstract Classification: A Simulation Study

## Introduction

Multilingual Feature Extractors are vital tools for handling text classification tasks, including abstract classification, across multiple languages. These models allow us to gather insights from diverse languages, fostering better understanding and comparative analysis.

This repository supports a simulation study aimed at evaluating the effectiveness of different Multilingual Feature Extractors for Abstract Classification. The study findings are detailed in the corresponding paper, and this README provides the necessary guidance for reproducing the study: from installation of models, through simulations, to result analysis. Our aim is to help inform and guide the future of multilingual text classification.


## Installation

The simulations require several Python packages that you can install using pip. We highly recommend setting up a virtual environment before proceeding with the installation to ensure that the package versions used in this project do not conflict with those in other projects.

Python version 3.8 or above is required.

We've included a requirements.txt file in the repository containing all the necessary dependencies. After activating the virtual environment, you can install all required packages using the following command:

```bash
pip install -r requirements.txt
```

> Note: The multilingual-feature-extractors package is installed directly from its GitHub repository. For more information on all models, please refer to the [repository](https://github.com/Robdboer/Multilingual-Feature-Extractors) of the multilingual-feature-extractors.

## Data preparation

The data for this study comes from the systematic review of Hamilton & Murphy (2023) [source](https://osf.io/3u982/), which we've placed under the raw_data/data folder with the filename `Hamilton_Download.csv`.

Before we can use this data, we need to carry out two preprocessing steps:

1. Cleaning: We first clean the data to remove any irrelevant features and handle missing values as appropriate.

2. Splitting the Data: The preprocessed data is then split into four distinct sets for simulation purposes. The proportions of these sets vary based on the study design.

All these preprocessing steps can be performed by running the provided notebook `Preprocess Hamilton raw.ipynb` located in `data/scripts`. After running all cells in this notebook, the four preprocessed datasets will be generated and stored in the appropriate simulation data folders. For more detailed instructions, navigate to `raw_data/readme.md`

Please note that the data processing and preparation steps can vary depending on the specific requirements of a study. In case of any custom modifications, please adapt the instructions accordingly.


## Simulations

The simulation study involves evaluating ten different models on four datasets using both SVM and Logistic classifiers, and two prior knowledge sets, yielding a total of 160 simulations. To streamline the process and efficiently manage resources, these simulations are split into two sets, each associated with a different "prior knowledge seed".

A "prior knowledge seed" defines the starting prior knowledge papers for each set of simulations, allowing us to test model performance under different initial states.

To conduct the simulations:

1. Navigate to 'simulations/prior-knowledge-1` and run the jobs.bat file. This initiates the first 80 simulations.

2.  Once the first set of simulations finishes, navigate to `simulations/prior-knowledge-2` and again run the jobs.bat file for the remaining 80 simulations.

This structured approach ensures an efficient use of computational resources and enables easier tracking and troubleshooting of the simulation process.


## Results

Once all simulations are completed, you can proceed with processing the results.

To do this, run the provided Jupyter notebook named `Simulation_Results.ipynb` located in the `scripts folder`. This notebook performs the following tasks:

1. Copies all simulation state files into a newly created directory `simulations/state_files`.

2. Extracts essential evaluation metrics from the `.asreview` state files and stores them in a DataFrame.

3. Generates final tables, charts, and recall plots.

After executing all cells in `Simulation_Results.ipynb`, you'll find the final tables and charts within the notebook itself. You may also choose to export these for further use or presentation.


## License

This project is licensed under the terms of the MIT license. For more information, see the [LICENSE](LICENCE) file in the root of this repository.

## Contact information

Rob den Boer

R.j.s.denboer@students.uu.nl

Utrecht University

ASReview
