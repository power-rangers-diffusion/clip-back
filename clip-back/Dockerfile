FROM nvidia/cuda:11.6.0-base-ubuntu20.04

RUN apt update && \
    apt install --no-install-recommends -y build-essential python3 python3-pip && \
    apt clean && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN ["pip", "install", "clip-retrieval", "autokeras"]

EXPOSE 9753

COPY . .

ENTRYPOINT clip-retrieval back --port=9753 --indices-paths=indices_paths.json --enable_faiss_memory_mapping=True --enable_hdf5=True --use_arrow=False --reorder_metadata_by_ivf_index=False --enable_mclip_option=True --clip_model='ViT-B/32' --use_jit=True --provide_safety_model=True --provide_violence_detector=True --provide_aethetic_embeddings=True
