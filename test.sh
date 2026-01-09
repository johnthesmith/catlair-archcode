#!/bin/bash

./cli.sh \
--app.config=config.yaml \
--engine.payload=archcode \
--engine.method=build \
--source=./rw/source \
--destination=./rw/result \
--index-file=./content/default/index.md
