#!/bin/bash

set -e

current_dir=$(dirname -- "$0")
current_dir=$(cd -- "$current_dir" && pwd)

CONFIGURATION="Release"
NUPKG_OUTPUT="./nupkg"
BUILD_NUMBER=${BUILD_NUMBER:-0}

mkdir -p "$NUPKG_OUTPUT"

for project in \
  "CredentialProvider.Microsoft/CredentialProvider.Microsoft.csproj" \
  "src/Authentication/Microsoft.Artifacts.Authentication.csproj"
do
  echo "> Packing ${project}..."

  "$current_dir/dotnet-sdk.cmd" pack \
    --no-build \
    --configuration "$CONFIGURATION" \
    --output "$NUPKG_OUTPUT" \
    "$project" \
    "-p:CredentialProviderBuildNumber=${BUILD_NUMBER}"
done

echo "> Packing completed successfully!"