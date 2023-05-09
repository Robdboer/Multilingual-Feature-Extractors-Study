# ASReview multilingual feature extractor

This extension to ASReview implements a multilingual feature extractor algorithm, allowing for the analysis of records in multiple languages. The supported languages include:

Arabic, Chinese, Dutch, English, French, German, Italian, Korean, Polish, Portuguese, Russian, Spanish, Turkish, and more!

The extension utilizes the [`DeepPavlov/bert-base-multilingual-cased-sentence`](https://huggingface.co/DeepPavlov/bert-base-multilingual-cased-sentence) model, which is a multilingual sentence-transformers model that maps sentences to a 512-dimensional dense vector space.


## Installation

This model depends on Transformers. Install it with:
```bash
pip install -U transformers
```

Install the bert-base-multilingual-cased-sentence feature extractor with:

```bash
pip install https://github.com/Robdboer/Thesis-Rob/bert-base-multilingual-cased-sentence
```

>Please note that, as with all sentence transformers, this model produces negative vector values. Consequently, it is not compatible with Naive Bayes classifiers, which require non-negative feature values.

## License

[MIT license](/LICENSE)

## Contact

For any questions or remarks, please send an email to asreview@uu.nl or open an issue.
