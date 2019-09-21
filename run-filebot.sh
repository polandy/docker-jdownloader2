#!/bin/sh

# naming docs: https://www.filebot.net/naming.html

filebot -script fn:amc $INPUT_DIR \
  --output $OUTPUT_DIR \
  --action $ACTION \
  -non-strict \
  --order Airdate \
  --conflict auto \
  --lang en \
  --log all --log-file '/data/.filebot-node/filebot.log' \
  --def 'music=y' \
    'artwork=y' \
    'subtitles=en,de' \
    'skipExtract=y' \
    'clean=y' \
    'movieFormat=movies/{n.space('\''.'\'')}[{y}][{resolution}]/{n.space('\''.'\'')}[{y}]{languages}[{source}][{resolution}][{vc}][{group}]' \
    'seriesFormat=series/{n}-{y}/{plex.name.space('\''.'\'')}' \
    'musicFormat=music/{n.space('\''.'\'')}/{y}-{album.space('\''.'\'')}/{pi.pad(2)}-{t.space('\''_'\'')}'
