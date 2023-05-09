from setuptools import setup
from setuptools import find_namespace_packages

setup(
    name="asreview-bert-base-multilingual",
    version="1.0.2",
    description="A feature extractor based on bert_base_multilingual_cased_sentence.",
    url="https://github.com/asreview/asreview-multilingual-feature-extractor",
    author="Rob den Boer",
    author_email="robbiedboer99@gmail.com",
    classifiers=[
        "Development Status :: 4 - Beta",
        "License :: OSI Approved :: MIT License",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.6",
        "Programming Language :: Python :: 3.7",
    ],
    keywords="systematic review multilingual feature extractor",
    packages=find_namespace_packages(include=["asreviewcontrib.*"]),
    python_requires="~=3.6",
    install_requires=["asreview>=0.13",
                      "transformers>=4.0"],
    entry_points={
        "asreview.models.classifiers": [
            # define classifier algorithms
        ],
        "asreview.models.feature_extraction": [
            "bertmultilingual = asreviewcontrib.models.bert_base_multilingual:bertbasemultilingual",
        ],
        "asreview.models.balance": [
            # define balance strategy algorithms
        ],
        "asreview.models.query": [
            # define query strategy algorithms
        ],
    },
    project_urls={
        "Bug Reports": "https://github.com/asreview/asreview-multilingual-feature-extractor/issues",
        "Source": "https://github.com/asreview/asreview-multilingual-feature-extractor/",
    },
)
