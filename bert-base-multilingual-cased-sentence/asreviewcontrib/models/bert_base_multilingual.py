from transformers import AutoTokenizer, AutoModel
from asreview.models.feature_extraction.base import BaseFeatureExtraction
import torch
import numpy as np


class bertbasemultilingual(BaseFeatureExtraction):
    """
    Multilingual Sentence Transformer feature extraction technique using
    the 'sentence-transformers/distiluse-base-multilingual-cased-v2' model.

    This class inherits from the BaseFeatureExtraction class provided by the
    ASReview package and implements the transform method for encoding texts
    using the multilingual SentenceTransformer model.
    """

    name = "bertbasemultilingual"
    label = "Bert Base Multilingual"

    def transform(self, texts):
        """
        Encode the given texts using the bert model.
        Args:
        texts (List[str]): A list of text strings to be encoded.
        Returns:
        numpy.ndarray: A 2D array containing the encoded text embeddings.
        """

        text_list = texts.tolist()
        tokenizer = AutoTokenizer.from_pretrained("DeepPavlov/bert-base-multilingual-cased-sentence")
        model = AutoModel.from_pretrained("DeepPavlov/bert-base-multilingual-cased-sentence")

        encoded_input = tokenizer(text_list, return_tensors='pt', padding=True, truncation=True, max_length=512)
        num_texts = len(texts)
        print('Setting up multilingual model... This could take a while')
        embeddings = []
        for i in range(0, num_texts, 10):
            with torch.no_grad():
                start_idx = i
                end_idx = min(i + 10, num_texts)
                batch_input = {k:v[start_idx:end_idx] for k, v in encoded_input.items()}
                output = model(**batch_input)
                batch_embeddings = output.last_hidden_state.mean(dim=1).numpy()
                embeddings.append(batch_embeddings)
                percent_complete = int((end_idx / num_texts) * 100)
                print(f"Processing texts: {percent_complete}%", end="\r")
        return np.concatenate(embeddings)