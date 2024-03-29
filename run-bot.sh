mkdir -p outputs
mkdir -p hf_home

docker run \
    -it \
    --rm \
    --gpus=all \
    --env HF_TOKEN='' \
    --env DB_USER='skynet' \
    --env DB_PASS='nnf01nmf091d0i' \
    --mount type=bind,source="$(pwd)"/outputs,target=/outputs \
    --mount type=bind,source="$(pwd)"/hf_home,target=/hf_home \
    --mount type=bind,source="$(pwd)"/scripts,target=/scripts \
    skynet:dif python telegram-bot-dev.py
