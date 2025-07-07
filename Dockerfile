FROM quay.io/go-skynet/local-ai:latest

# Copy your model configuration file
COPY models.yaml /models.yaml

# Create the models directory and download the Mistral model
RUN mkdir -p /models
RUN curl -L -o /models/mistral.Q4_K_M.gguf https://huggingface.co/TheBloke/Mistral-7B-Instruct-v0.1-GGUF/resolve/main/mistral-7b-instruct-v0.1.Q4_K_M.gguf

# Disable the model gallery loading to avoid unmarshalling error
ENV DISABLE_MODEL_GALLERY=true

# Set default command
CMD ["/usr/bin/local-ai", "--models-path", "/models", "--config-file", "/models.yaml"]
