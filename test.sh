#!/bin/bash

./cli.sh \
--engine.payload=archcode \
--engine.method=build \
--source=./rw/source \
--index-file=./rw/source/content/default/index.md \
--destination=./rw/result
