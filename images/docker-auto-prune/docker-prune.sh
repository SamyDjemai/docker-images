#!/bin/ash
set -o pipefail

RECLAIMED_SPACE=$(docker system prune -f | grep 'reclaimed')
curl -s -o /dev/null -H "Tags: broom" -H "Title: Docker Prune" -d "$RECLAIMED_SPACE" "$NTFY_URL"
