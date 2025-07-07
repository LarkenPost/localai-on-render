FROM quay.io/go-skynet/local-ai:latest

ENV MODELS_PATH=/models
ENV THREADS=1
ENV PRELOAD_MODELS=false
ENV DISABLE_MEDDLING_MODELSCAN=true

EXPOSE 8080
FROM quay.io/go-skynet/local-ai:latest
EXPOSE 8080
