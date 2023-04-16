#!/bin/sh

mkdir -p $LOCAL_DUMP_DIR/$DATABASE_NAME
sh exec.sh --config $CONFIG_FILE dump restore local -i postgres -v latest -o > "$LOCAL_DUMP_DIR/$DATABASE_NAME/$DATABASE_NAME-`date +"%s"`.sql"
