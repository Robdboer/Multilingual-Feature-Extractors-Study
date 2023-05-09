import torch
from transformers import AutoTokenizer, AutoModel
from asreview.models.feature_extraction.base import BaseFeatureExtraction


class xlmroberta(BaseFeatureExtraction):
    """
    Xlm-roberta feature extraction technique using
    the 'XLM-RoBERTa (base-sized model)' model.
    This class inherits from the BaseFeatureExtraction class provided by the
    ASReview package and implements the transform method for encoding texts
    using the multilingual SentenceTransformer model.
    """

    name = "xlm-roberta"
    label = "XLM-RoBERTa"

    def transform(self, texts):
        """
        Encode the given texts using the bert model.
        Args:
        texts (List[str]): A list of text strings to be encoded.
        Returns:
        numpy.ndarray: A 2D array containing the encoded text embeddings.
        """

        text_list = texts.tolist()
        tokenizer = AutoTokenizer.from_pretrained('xlm-roberta-base')

        num_texts = len(texts)
        model = AutoModel.from_pretrained("xlm-roberta-base")
        encoded_input = tokenizer(text_list, return_tensors='pt', padding=True, truncation=True)
        print('Setting up multilingual model... This could take a while')
  
        with torch.no_grad():
            output = model(**encoded_input)
            embeddings = output.last_hidden_state.mean(dim=1).numpy()

        return embeddings
