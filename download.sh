#!/bin/bash

index_size=64
outdir=laion400m-index

mkdir ${outdir}
wget https://the-eye.eu/public/AI/cah/laion400m-met-release/laion400m-index/metadata.hdf5 -O ${outdir}/metadata.hdf5
wget https://the-eye.eu/public/AI/cah/laion400m-indexes/laion400m-${index_size}GB-index/text.index -O ${outdir}/text.index
wget https://the-eye.eu/public/AI/cah/laion400m-indexes/laion400m-${index_size}GB-index/image.index -O ${outdir}/image.index
