# Bash build scripts

All scripts are using dotnet-sdk.cmd script to install .NET if needed and as a dotnet CLI wrapper.

- `build.sh`: Restores, Builds and Publishes a set of dlls with a release configuration.
- `pack.sh`: Packs Microsoft.CredentialProvider into a NuGet package into /nupkg folder.

Both scripts are expected to be executed from the root directory of the repository.