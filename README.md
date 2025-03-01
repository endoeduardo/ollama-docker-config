# ollama-docker-config
Settings and configurations for running ollama as docker container instance, so a local LLM can be hosted and used instead of payed API calls

## For CPU
For cpu, just use the docker-compose-cpu.yml file, once docker starts the container run the following command with your chosen `model`. You can find models at the [ollama library](https://ollama.com/library).

```bash
docker exec -it ollama ollama run <model>
```

## For AMD GPU
For AMD gpu just run docker compose file for gpu, but you need to change the version according to the AMD architecture.
```yaml
    environment:
      OLLAMA_MODELS: /usr/share/ollama
      HSA_OVERRIDE_GFX_VERSION: "10.3.0" # Change here
      HIP_VISIBLE_DEVICES: "0"
```
When the container is running, type the following command using your chosen model. You can find models at the [ollama library](https://ollama.com/library)
```bash
docker exec -it ollama ollama run <model>
```

### Versions depeding on AMD architecture

Use the following versions

| Architecture                      | Versions                       |
|-----------------------------------|--------------------------------|
|for GCN 5th gen based GPUs and APUs| HSA_OVERRIDE_GFX_VERSION=9.0.0 |
|for RDNA 1 based GPUs and APUs     | HSA_OVERRIDE_GFX_VERSION=10.1.0|
|for RDNA 2 based GPUs and APUs     | HSA_OVERRIDE_GFX_VERSION=10.3.0| 
|for RDNA 3 based GPUs and APUs     | HSA_OVERRIDE_GFX_VERSION=11.0.0| 
|for RDNA 4 based GPUs and APUs     | HSA_OVERRIDE_GFX_VERSION=12.0.0|
