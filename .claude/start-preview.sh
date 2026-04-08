#!/usr/bin/env bash
PORT="${PORT:-4567}"
exec devenv shell -- bundle exec middleman server --port "$PORT"
