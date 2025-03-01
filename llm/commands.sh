### CLI commands for running ollama with Docker

# With CPU only
docker run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama

# For AMD GPU
docker run -d --device /dev/kfd --device /dev/dri -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama:rocm

# Running the model locally
docker exec -it ollama ollama run llama3
