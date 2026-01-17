#!/bin/bash

./cli.sh \
--app.config=config.yaml \
--engine.payload=archcode \
--engine.method=build \
--source=../../scraps/arch-source \
--destination-path=../../scraps \
--project-path=arch \
--index-file=index.md
