# Simulation study

*This project was rendered with ASReview-Makita version 0.6.3.*

This project was rendered from the Makita-multiple_models template. See [asreview/asreview-makita#templates](https://github.com/asreview/asreview-makita#templates) for template rules and formats.

The template is described as: 'Basic simulation for every possible combination of selected models'.

## Installation

This project depends on Python 3.7 or later (python.org/download), and [ASReview](https://asreview.nl/download/). Install the following dependencies to run the simulation and analysis in this project.

```sh
pip install asreview asreview-insights asreview-datatools
```

## Data

The performance on the following datasets is evaluated:

- data\Hamilton_English.csv
- data\Hamilton_Multi_1.csv
- data\Hamilton_Multi_2.csv
- data\Hamilton_Original.csv

## Run simulation

To start the simulation, run the `jobs.bat` file.

## Structure

The following files are found in this project:

    📦
    ├── 📂data
    │   ├── 📜Hamilton_English.csv
    │   ├── 📜Hamilton_Multi_1.csv
    │   ├── 📜Hamilton_Multi_2.csv
    │   ├── 📜Hamilton_Original.csv
    ├── 📂output
    │   ├── 📂simulation
    |   |   └── 📂Hamilton_English
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Hamilton_English.json
    |   |       |   ├── 📜wordcloud_Hamilton_English.png
    |   |       |   ├── 📜wordcloud_relevant_Hamilton_English.png
    |   |       |   └── 📜wordcloud_irrelevant_Hamilton_English.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Hamilton_English_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Hamilton_English_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Hamilton_English.png
    |   |   └── 📂Hamilton_Multi_1
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Hamilton_Multi_1.json
    |   |       |   ├── 📜wordcloud_Hamilton_Multi_1.png
    |   |       |   ├── 📜wordcloud_relevant_Hamilton_Multi_1.png
    |   |       |   └── 📜wordcloud_irrelevant_Hamilton_Multi_1.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Hamilton_Multi_1_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Hamilton_Multi_1_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Hamilton_Multi_1.png
    |   |   └── 📂Hamilton_Multi_2
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Hamilton_Multi_2.json
    |   |       |   ├── 📜wordcloud_Hamilton_Multi_2.png
    |   |       |   ├── 📜wordcloud_relevant_Hamilton_Multi_2.png
    |   |       |   └── 📜wordcloud_irrelevant_Hamilton_Multi_2.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Hamilton_Multi_2_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Hamilton_Multi_2_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Hamilton_Multi_2.png
    |   |   └── 📂Hamilton_Original
    |   |       ├── 📂descriptives
    |   |       |   ├── 📜data_stats_Hamilton_Original.json
    |   |       |   ├── 📜wordcloud_Hamilton_Original.png
    |   |       |   ├── 📜wordcloud_relevant_Hamilton_Original.png
    |   |       |   └── 📜wordcloud_irrelevant_Hamilton_Original.png
    |   |       ├── 📂state_files
    |   |       |   ├── 📜sim_Hamilton_Original_`x`.asreview
    |   |       |   └── 📜...
    |   |       ├── 📂metrics
    |   |       ├   ├── 📜metrics_sim_Hamilton_Original_`x`.json
    |   |       |   └── 📜...
    |   |       └── 📜plot_recall_Hamilton_Original.png
    │   └── 📂tables
    |       ├── 📜data_descriptives.csv
    |       ├── 📜data_descriptives.xlsx
    |       ├── 📜data_metrics.csv
    |       └── 📜data_metrics.xlsx
    ├── 📂scripts
    │   ├── 📜get_plot.py
    │   ├── 📜merge_descriptives.py
    │   ├── 📜merge_metrics.py
    │   ├── 📜merge_tds.py
    │   └── 📜...
    ├── 📜jobs.bat
    └── 📜README.md
