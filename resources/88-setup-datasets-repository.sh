#!/bin/bash

set -eu

export PATH="/opt/omero/web/venv3/bin:$PATH"
python=/opt/omero/web/venv3/bin/python
omero=/opt/omero/web/venv3/bin/omero

DATASETS_REPOSITORY="${DATASETS_REPOSITORY:-/data/array_datasets/}"

echo "Setting Array Datasets repository to $DATASETS_REPOSITORY"
$python $omero config set omero.web.ome_seadragon.dzi_adapter.datasets.repository "$DATASETS_REPOSITORY"