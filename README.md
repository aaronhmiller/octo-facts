# Octo Facts

Let's learn about those fascinating mollusks we call octopuses!

## Build the container

`docker buildx build --platform linux/amd64,linux/arm64 -t aaronhmiller/linky .`

## Run the container

`docker run --rm aaronhmiller/linky`

## Discussion

The `Dockerfile` contains instructions to create the execution environment so
that the `main.py` program, which reads and prints out a random line from the
`facts.txt` file, properly runs is one of the main takaways here (as well as all
those kewl octo facts).

### Secondary discussion

The `Dockerfile-multi` is included to show how a multi-stage build can reduce the size of a container. Run `docker buildx build --platform linux/amd64,linux/arm64 -t aaronhmiller/linky3 .` to see how it impacts the final size of the image created.
