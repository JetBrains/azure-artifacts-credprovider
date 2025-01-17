#!/bin/bash

set -e

current_dir=$(dirname -- "$0")
current_dir=$(cd -- "$current_dir" && pwd)

CONFIGURATION="Release"
PROJECT="CredentialProvider.Microsoft"
NUPKG_OUTPUT="./nupkg"

mkdir -p "$NUPKG_OUTPUT"

echo "> Packing..."
"$current_dir/dotnet-sdk.cmd" pack --no-build --configuration $CONFIGURATION --output "$NUPKG_OUTPUT" "$PROJECT"

echo "> Packing completed successfully!"