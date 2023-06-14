@ echo off
COLOR E0
:: version 0.6.3

:: Create folder structure. By default, the folder 'output' is used to store output.
mkdir output
mkdir output\simulation

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Hamilton_English
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Hamilton_English\
mkdir output\simulation\Hamilton_English\metrics

:: Collect descriptives about the dataset Hamilton_English
mkdir output\simulation\Hamilton_English\descriptives
asreview data describe data\Hamilton_English.csv -o output\simulation\Hamilton_English\descriptives\data_stats_Hamilton_English.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Hamilton_English.csv -o output\simulation\Hamilton_English\descriptives\wordcloud_Hamilton_English.png --width 800 --height 500
asreview wordcloud data\Hamilton_English.csv -o output\simulation\Hamilton_English\descriptives\wordcloud_relevant_Hamilton_English.png --width 800 --height 500 --relevant
asreview wordcloud data\Hamilton_English.csv -o output\simulation\Hamilton_English\descriptives\wordcloud_irrelevant_Hamilton_English.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Hamilton_English\state_files

:: Classifier = svm, Feature extractor = distiluse , Query strategy = max
asreview simulate data\Hamilton_English.csv -s output\simulation\Hamilton_English\state_files\sim_Hamilton_English_svm_distiluse_0.asreview --model svm --query_strategy max --feature_extraction distiluse --init_seed 535 --seed 165
asreview metrics output\simulation\Hamilton_English\state_files\sim_Hamilton_English_svm_distiluse_0.asreview -o output\simulation\Hamilton_English\metrics\metrics_sim_Hamilton_English_svm_distiluse_0.json

:: Classifier = svm, Feature extractor = tfidf , Query strategy = max
asreview simulate data\Hamilton_English.csv -s output\simulation\Hamilton_English\state_files\sim_Hamilton_English_svm_tfidf_0.asreview --model svm --query_strategy max --feature_extraction tfidf --init_seed 535 --seed 165
asreview metrics output\simulation\Hamilton_English\state_files\sim_Hamilton_English_svm_tfidf_0.asreview -o output\simulation\Hamilton_English\metrics\metrics_sim_Hamilton_English_svm_tfidf_0.json

:: Classifier = svm, Feature extractor = minlm , Query strategy = max
asreview simulate data\Hamilton_English.csv -s output\simulation\Hamilton_English\state_files\sim_Hamilton_English_svm_minlm_0.asreview --model svm --query_strategy max --feature_extraction minlm --init_seed 535 --seed 165
asreview metrics output\simulation\Hamilton_English\state_files\sim_Hamilton_English_svm_minlm_0.asreview -o output\simulation\Hamilton_English\metrics\metrics_sim_Hamilton_English_svm_minlm_0.json

:: Classifier = svm, Feature extractor = mpnet , Query strategy = max
asreview simulate data\Hamilton_English.csv -s output\simulation\Hamilton_English\state_files\sim_Hamilton_English_svm_mpnet_0.asreview --model svm --query_strategy max --feature_extraction mpnet --init_seed 535 --seed 165
asreview metrics output\simulation\Hamilton_English\state_files\sim_Hamilton_English_svm_mpnet_0.asreview -o output\simulation\Hamilton_English\metrics\metrics_sim_Hamilton_English_svm_mpnet_0.json

:: Classifier = svm, Feature extractor = stsb , Query strategy = max
asreview simulate data\Hamilton_English.csv -s output\simulation\Hamilton_English\state_files\sim_Hamilton_English_svm_stsb_0.asreview --model svm --query_strategy max --feature_extraction stsb --init_seed 535 --seed 165
asreview metrics output\simulation\Hamilton_English\state_files\sim_Hamilton_English_svm_stsb_0.asreview -o output\simulation\Hamilton_English\metrics\metrics_sim_Hamilton_English_svm_stsb_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Hamilton_English\state_files\ -o output\simulation\Hamilton_English\plot_recall_sim_Hamilton_English.png --show_legend model

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Hamilton_Multi_1
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Hamilton_Multi_1\
mkdir output\simulation\Hamilton_Multi_1\metrics

:: Collect descriptives about the dataset Hamilton_Multi_1
mkdir output\simulation\Hamilton_Multi_1\descriptives
asreview data describe data\Hamilton_Multi_1.csv -o output\simulation\Hamilton_Multi_1\descriptives\data_stats_Hamilton_Multi_1.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Hamilton_Multi_1.csv -o output\simulation\Hamilton_Multi_1\descriptives\wordcloud_Hamilton_Multi_1.png --width 800 --height 500
asreview wordcloud data\Hamilton_Multi_1.csv -o output\simulation\Hamilton_Multi_1\descriptives\wordcloud_relevant_Hamilton_Multi_1.png --width 800 --height 500 --relevant
asreview wordcloud data\Hamilton_Multi_1.csv -o output\simulation\Hamilton_Multi_1\descriptives\wordcloud_irrelevant_Hamilton_Multi_1.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Hamilton_Multi_1\state_files

:: Classifier = svm, Feature extractor = distiluse , Query strategy = max
asreview simulate data\Hamilton_Multi_1.csv -s output\simulation\Hamilton_Multi_1\state_files\sim_Hamilton_Multi_1_svm_distiluse_0.asreview --model svm --query_strategy max --feature_extraction distiluse --init_seed 535 --seed 166
asreview metrics output\simulation\Hamilton_Multi_1\state_files\sim_Hamilton_Multi_1_svm_distiluse_0.asreview -o output\simulation\Hamilton_Multi_1\metrics\metrics_sim_Hamilton_Multi_1_svm_distiluse_0.json

:: Classifier = svm, Feature extractor = tfidf , Query strategy = max
asreview simulate data\Hamilton_Multi_1.csv -s output\simulation\Hamilton_Multi_1\state_files\sim_Hamilton_Multi_1_svm_tfidf_0.asreview --model svm --query_strategy max --feature_extraction tfidf --init_seed 535 --seed 166
asreview metrics output\simulation\Hamilton_Multi_1\state_files\sim_Hamilton_Multi_1_svm_tfidf_0.asreview -o output\simulation\Hamilton_Multi_1\metrics\metrics_sim_Hamilton_Multi_1_svm_tfidf_0.json

:: Classifier = svm, Feature extractor = minlm , Query strategy = max
asreview simulate data\Hamilton_Multi_1.csv -s output\simulation\Hamilton_Multi_1\state_files\sim_Hamilton_Multi_1_svm_minlm_0.asreview --model svm --query_strategy max --feature_extraction minlm --init_seed 535 --seed 166
asreview metrics output\simulation\Hamilton_Multi_1\state_files\sim_Hamilton_Multi_1_svm_minlm_0.asreview -o output\simulation\Hamilton_Multi_1\metrics\metrics_sim_Hamilton_Multi_1_svm_minlm_0.json

:: Classifier = svm, Feature extractor = mpnet , Query strategy = max
asreview simulate data\Hamilton_Multi_1.csv -s output\simulation\Hamilton_Multi_1\state_files\sim_Hamilton_Multi_1_svm_mpnet_0.asreview --model svm --query_strategy max --feature_extraction mpnet --init_seed 535 --seed 166
asreview metrics output\simulation\Hamilton_Multi_1\state_files\sim_Hamilton_Multi_1_svm_mpnet_0.asreview -o output\simulation\Hamilton_Multi_1\metrics\metrics_sim_Hamilton_Multi_1_svm_mpnet_0.json

:: Classifier = svm, Feature extractor = stsb , Query strategy = max
asreview simulate data\Hamilton_Multi_1.csv -s output\simulation\Hamilton_Multi_1\state_files\sim_Hamilton_Multi_1_svm_stsb_0.asreview --model svm --query_strategy max --feature_extraction stsb --init_seed 535 --seed 166
asreview metrics output\simulation\Hamilton_Multi_1\state_files\sim_Hamilton_Multi_1_svm_stsb_0.asreview -o output\simulation\Hamilton_Multi_1\metrics\metrics_sim_Hamilton_Multi_1_svm_stsb_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Hamilton_Multi_1\state_files\ -o output\simulation\Hamilton_Multi_1\plot_recall_sim_Hamilton_Multi_1.png --show_legend model

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Hamilton_Multi_2
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Hamilton_Multi_2\
mkdir output\simulation\Hamilton_Multi_2\metrics

:: Collect descriptives about the dataset Hamilton_Multi_2
mkdir output\simulation\Hamilton_Multi_2\descriptives
asreview data describe data\Hamilton_Multi_2.csv -o output\simulation\Hamilton_Multi_2\descriptives\data_stats_Hamilton_Multi_2.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Hamilton_Multi_2.csv -o output\simulation\Hamilton_Multi_2\descriptives\wordcloud_Hamilton_Multi_2.png --width 800 --height 500
asreview wordcloud data\Hamilton_Multi_2.csv -o output\simulation\Hamilton_Multi_2\descriptives\wordcloud_relevant_Hamilton_Multi_2.png --width 800 --height 500 --relevant
asreview wordcloud data\Hamilton_Multi_2.csv -o output\simulation\Hamilton_Multi_2\descriptives\wordcloud_irrelevant_Hamilton_Multi_2.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Hamilton_Multi_2\state_files

:: Classifier = svm, Feature extractor = distiluse , Query strategy = max
asreview simulate data\Hamilton_Multi_2.csv -s output\simulation\Hamilton_Multi_2\state_files\sim_Hamilton_Multi_2_svm_distiluse_0.asreview --model svm --query_strategy max --feature_extraction distiluse --init_seed 535 --seed 167
asreview metrics output\simulation\Hamilton_Multi_2\state_files\sim_Hamilton_Multi_2_svm_distiluse_0.asreview -o output\simulation\Hamilton_Multi_2\metrics\metrics_sim_Hamilton_Multi_2_svm_distiluse_0.json

:: Classifier = svm, Feature extractor = tfidf , Query strategy = max
asreview simulate data\Hamilton_Multi_2.csv -s output\simulation\Hamilton_Multi_2\state_files\sim_Hamilton_Multi_2_svm_tfidf_0.asreview --model svm --query_strategy max --feature_extraction tfidf --init_seed 535 --seed 167
asreview metrics output\simulation\Hamilton_Multi_2\state_files\sim_Hamilton_Multi_2_svm_tfidf_0.asreview -o output\simulation\Hamilton_Multi_2\metrics\metrics_sim_Hamilton_Multi_2_svm_tfidf_0.json

:: Classifier = svm, Feature extractor = minlm , Query strategy = max
asreview simulate data\Hamilton_Multi_2.csv -s output\simulation\Hamilton_Multi_2\state_files\sim_Hamilton_Multi_2_svm_minlm_0.asreview --model svm --query_strategy max --feature_extraction minlm --init_seed 535 --seed 167
asreview metrics output\simulation\Hamilton_Multi_2\state_files\sim_Hamilton_Multi_2_svm_minlm_0.asreview -o output\simulation\Hamilton_Multi_2\metrics\metrics_sim_Hamilton_Multi_2_svm_minlm_0.json

:: Classifier = svm, Feature extractor = mpnet , Query strategy = max
asreview simulate data\Hamilton_Multi_2.csv -s output\simulation\Hamilton_Multi_2\state_files\sim_Hamilton_Multi_2_svm_mpnet_0.asreview --model svm --query_strategy max --feature_extraction mpnet --init_seed 535 --seed 167
asreview metrics output\simulation\Hamilton_Multi_2\state_files\sim_Hamilton_Multi_2_svm_mpnet_0.asreview -o output\simulation\Hamilton_Multi_2\metrics\metrics_sim_Hamilton_Multi_2_svm_mpnet_0.json

:: Classifier = svm, Feature extractor = stsb , Query strategy = max
asreview simulate data\Hamilton_Multi_2.csv -s output\simulation\Hamilton_Multi_2\state_files\sim_Hamilton_Multi_2_svm_stsb_0.asreview --model svm --query_strategy max --feature_extraction stsb --init_seed 535 --seed 167
asreview metrics output\simulation\Hamilton_Multi_2\state_files\sim_Hamilton_Multi_2_svm_stsb_0.asreview -o output\simulation\Hamilton_Multi_2\metrics\metrics_sim_Hamilton_Multi_2_svm_stsb_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Hamilton_Multi_2\state_files\ -o output\simulation\Hamilton_Multi_2\plot_recall_sim_Hamilton_Multi_2.png --show_legend model

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: Hamilton_Original
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\Hamilton_Original\
mkdir output\simulation\Hamilton_Original\metrics

:: Collect descriptives about the dataset Hamilton_Original
mkdir output\simulation\Hamilton_Original\descriptives
asreview data describe data\Hamilton_Original.csv -o output\simulation\Hamilton_Original\descriptives\data_stats_Hamilton_Original.json

:: Generate wordcloud visualizations of all datasets
asreview wordcloud data\Hamilton_Original.csv -o output\simulation\Hamilton_Original\descriptives\wordcloud_Hamilton_Original.png --width 800 --height 500
asreview wordcloud data\Hamilton_Original.csv -o output\simulation\Hamilton_Original\descriptives\wordcloud_relevant_Hamilton_Original.png --width 800 --height 500 --relevant
asreview wordcloud data\Hamilton_Original.csv -o output\simulation\Hamilton_Original\descriptives\wordcloud_irrelevant_Hamilton_Original.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\Hamilton_Original\state_files

:: Classifier = svm, Feature extractor = distiluse , Query strategy = max
asreview simulate data\Hamilton_Original.csv -s output\simulation\Hamilton_Original\state_files\sim_Hamilton_Original_svm_distiluse_0.asreview --model svm --query_strategy max --feature_extraction distiluse --init_seed 535 --seed 168
asreview metrics output\simulation\Hamilton_Original\state_files\sim_Hamilton_Original_svm_distiluse_0.asreview -o output\simulation\Hamilton_Original\metrics\metrics_sim_Hamilton_Original_svm_distiluse_0.json

:: Classifier = svm, Feature extractor = tfidf , Query strategy = max
asreview simulate data\Hamilton_Original.csv -s output\simulation\Hamilton_Original\state_files\sim_Hamilton_Original_svm_tfidf_0.asreview --model svm --query_strategy max --feature_extraction tfidf --init_seed 535 --seed 168
asreview metrics output\simulation\Hamilton_Original\state_files\sim_Hamilton_Original_svm_tfidf_0.asreview -o output\simulation\Hamilton_Original\metrics\metrics_sim_Hamilton_Original_svm_tfidf_0.json

:: Classifier = svm, Feature extractor = minlm , Query strategy = max
asreview simulate data\Hamilton_Original.csv -s output\simulation\Hamilton_Original\state_files\sim_Hamilton_Original_svm_minlm_0.asreview --model svm --query_strategy max --feature_extraction minlm --init_seed 535 --seed 168
asreview metrics output\simulation\Hamilton_Original\state_files\sim_Hamilton_Original_svm_minlm_0.asreview -o output\simulation\Hamilton_Original\metrics\metrics_sim_Hamilton_Original_svm_minlm_0.json

:: Classifier = svm, Feature extractor = mpnet , Query strategy = max
asreview simulate data\Hamilton_Original.csv -s output\simulation\Hamilton_Original\state_files\sim_Hamilton_Original_svm_mpnet_0.asreview --model svm --query_strategy max --feature_extraction mpnet --init_seed 535 --seed 168
asreview metrics output\simulation\Hamilton_Original\state_files\sim_Hamilton_Original_svm_mpnet_0.asreview -o output\simulation\Hamilton_Original\metrics\metrics_sim_Hamilton_Original_svm_mpnet_0.json

:: Classifier = svm, Feature extractor = stsb , Query strategy = max
asreview simulate data\Hamilton_Original.csv -s output\simulation\Hamilton_Original\state_files\sim_Hamilton_Original_svm_stsb_0.asreview --model svm --query_strategy max --feature_extraction stsb --init_seed 535 --seed 168
asreview metrics output\simulation\Hamilton_Original\state_files\sim_Hamilton_Original_svm_stsb_0.asreview -o output\simulation\Hamilton_Original\metrics\metrics_sim_Hamilton_Original_svm_stsb_0.json

:: Generate plot for dataset
python scripts\get_plot.py -s output\simulation\Hamilton_Original\state_files\ -o output\simulation\Hamilton_Original\plot_recall_sim_Hamilton_Original.png --show_legend model

:: Merge descriptives and metrics
python scripts\merge_descriptives.py
python scripts\merge_metrics.py
python scripts\merge_tds.py
