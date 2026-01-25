#!/bin/bash

./cli.sh \
--app.config=config.yaml \
--engine.payload=archcode \
--engine.method=build \
--source=../../scraps/arch-source \
--destination-path=../../scraps \
--destination-subpath=arch-dest \
--index-file=index.md
