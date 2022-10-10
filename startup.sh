#  Download the indexes and metadata for similarity search via 
# './download.sh' before running clip-back. 

# Build container
docker build -t clip_back:latest ./clip-back/

# Run
docker run -d -p 9753:9753 -v ${PWD}/laion400m-index:/app/index_folder clip_back:latest
