#!/bin/bash

./cli.sh \
--app.config=config.yaml \
--engine.payload=archcode \
--engine.method=build \
--source=./rw/source \
--destination-path=../../scraps \
--project-path=arch \
--index-file=./content/default/index.md
