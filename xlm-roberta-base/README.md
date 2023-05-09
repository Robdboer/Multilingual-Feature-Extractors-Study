# XLM-RoBERTa for extending ASReview with new model

ASReview has support for extensions, which enable you to seamlessly integrate
your own programs with the ASReview framework. This extension extends the
software with a new multilingual feature extraction technique, based on xlm-roberta-base.

Sources:

https://huggingface.co/xlm-roberta-base

## Installation

First install the required packages if needed:

```bash
pip install -U transformers

```

Then install the XLM-RoBERTa multilingual feature extractor with:

```bash
pip install git+https://github.com/Robdboer/xlm-roberta-base.git
```


## Usage

The new classifier `xlmroberta` is defined in
[`asreviewcontrib/models/xlmroberta.py`](asreviewcontrib/models/xlmroberta.py) and can be used in a simulation.

```bash
asreview simulate example_data_file.csv -e xlmroberta
```

## License

MIT license
