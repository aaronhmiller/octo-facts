# Let's look at Linky!

## Building

`docker buildx build --no-cache --platform linux/amd64,linux/arm64 -t aaronhmiller/linky2 .`

## Running

`docker run --rm aaronhmiller/linky2`

## Discussion

Although similar to the example one directory above, this example shows the
advantage of using a multi-stage build. Note how initially, the `-dev` variant
of python image is used, which if we ended there, would result in a 1.29GB image
size. You can see that in the example from the directory above. In this
multi-stage build, we start with the -dev image so we can install, but then
switch to the production image and copy over just what we need to run the image
generating program, resulting in an image 1/5 the size.
```
REPOSITORY            TAG       IMAGE ID       CREATED             SIZE
aaronhmiller/linky2   latest    29cf1123b1ce   28 minutes ago      186MB
aaronhmiller/linky    latest    5eb9550c2406   About an hour ago   1.29GB
```
