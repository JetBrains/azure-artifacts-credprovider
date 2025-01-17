#!/bin/bash

set -e

current_dir=$(dirname -- "$0")
current_dir=$(cd -- "$current_dir" && pwd)

CONFIGURATION="Release"
PROJECT="CredentialProvider.Microsoft"

echo "> Restoring dependencies..."
"$current_dir/dotnet-sdk.cmd" restore

echo "> Building for release..."
"$current_dir/dotnet-sdk.cmd" build --no-restore --configuration $CONFIGURATION

echo "> Publishing..."
"$current_dir/dotnet-sdk.cmd" publish --no-build --configuration $CONFIGURATION $PROJECT

echo "> Build and publish completed successfully"
