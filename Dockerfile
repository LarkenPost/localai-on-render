FROM quay.io/go-skynet/local-ai:latest

# Copy your model configuration file
COPY models.yaml /models.yaml

# (Optional) Copy your model weights if you're bundling them with the image
# COPY mistral.Q4_K_M.gguf /models/mistral.Q4_K_M.gguf

# Disable the model gallery loading to avoid unmarshalling error
ENV DISABLE_MODEL_GALLERY=true

# Set default command
CMD ["/usr/bin/local-ai", "--models-path", "/models", "--config-file", "/models.yaml"]

