FROM quay.io/go-skynet/local-ai:latest

# Clean models dir
RUN rm -rf /models && mkdir -p /models

# Copy your model configuration file
COPY models.yaml /models.yaml

# Download the mistral model
RUN curl -L -o /models/mistral.Q4_K_M.gguf https://huggingface.co/TheBloke/Mistral-7B-Instruct-v0.1-GGUF/resolve/main/mistral-7b-instruct-v0.1.Q4_K_M.gguf

# Disable model gallery (avoids unrelated YAML parsing errors)
ENV DISABLE_MODEL_GALLERY=true

# Final command
CMD ["local-ai", "--models-path", "/models", "--config-file", "/models.yaml"]

