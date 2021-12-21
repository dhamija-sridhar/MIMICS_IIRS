


## Running the capsule to reproduce the results

In your terminal, navigate to the folder where you've extracted the file and execute the following command, adjusting parameters as needed:
```shell
docker run --rm \
  --workdir /code \
  --volume "$PWD/data":/data \
  --volume "$PWD/code":/code \
  --volume "$PWD/results":/results \
  registry.codeocean.com/published/c595ac5b-e5ae-4f50-8b82-e6c4b3ddd985:v1 bash run.sh
```
