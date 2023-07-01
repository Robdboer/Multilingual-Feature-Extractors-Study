# Data Preprocessing

## Introduction

Before the raw data is ready for use in the simulation study, it needs to be fetched and undergo preprocessing. This involves retrieving the data from the source, cleaning it, transforming it into a suitable format, and organizing it for effective use in the simulations.

## Steps

1. Data Retrieval: First, fetch the data by running the `get_data.bat` file in the `scripts` directory. This script uses datahugger to download the data from the provided DOI or data source. The data will be stored as `C.Hamilton Songs Systematic Review data.csv` in the `data` folder.

2. Access Preprocessing Notebook: After fetching the data, locate the Jupyter notebook `Preprocess_Hamilton_Raw.ipynb` in the `scripts` directory.

3. Run Notebook: Execute all the cells in the notebook. This will perform the necessary preprocessing operations on the raw data.

4. Data Storage: After the data has been processed, the newly formatted data files are automatically saved in the data folders for each respective simulation directory.

Following these steps ensures that your data is appropriately prepared and in the correct format for use in the simulation stage of the study. These guidelines help maintain consistency and accuracy in the simulation results.
