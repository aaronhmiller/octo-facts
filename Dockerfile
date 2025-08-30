FROM cgr.dev/chainguard/python:latest-dev

WORKDIR /octo-facts

COPY main.py facts.txt ./

ENTRYPOINT [ "python", "/octo-facts/main.py" ]
