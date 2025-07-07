FROM quay.io/go-skynet/local-ai:latest

# Set environment variables
ENV MODELS_PATH=/models
ENV THREADS=1
ENV PRELOAD_MODELS=true
ENV DISABLE_MEDDLING_MODELSCAN=false

# Create models directory
RUN mkdir -p /models

# Download the Mistral 7B Q4_K_M model
RUN curl -L -o /models/mistral.Q4_K_M.gguf https://huggingface.co/TheBloke/Mistral-7B-Instruct-v0.1-GGUF/resolve/main/mistral-7b-instruct-v0.1.Q4_K_M.gguf

EXPOSE 8080
