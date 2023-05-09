# Multilingual BERT for extending ASReview with new model

ASReview has support for extensions, which enable you to seamlessly integrate
your own programs with the ASReview framework. This extension extends the
software with a new multilingual feature extraction technique, based on bert-base-multilingual-cased.

Sources:

https://huggingface.co/bert-base-multilingual-cased

## Installation

First install the required packages if needed:

```bash
pip install -U transformers

```

Then install the bert-base-multilingual-cased feature extractor with:

```bash
pip install git+https://github.com/Robdboer/bert-base-multilingual-cased.git
```


## Usage

The new classifier `mbert_fa` is defined in
[`asreviewcontrib/models/mbert_fa.py`](asreviewcontrib/models/mbert_fa.py) and can be used in a simulation.

```bash
asreview simulate example_data_file.csv -e mbert_fa
```

## License

MIT license
