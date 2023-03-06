FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build-env
WORKDIR /App

# Copy everything
COPY . ./
# Restore as distinct layers
RUN dotnet restore "Api/Api.csproj"
# Build and publish a release
# RUN dotnet publish -c Release -o out
RUN dotnet tool install --global dotnet-ef && echo "export PATH=\"$PATH:/root/.dotnet/tools\"" >> /root/.bashrc
# RUN dotnet list package
# Build runtime image

ENTRYPOINT ["./api.sh"]
# ENTRYPOINT ["dotnet", "run"]
# ENTRYPOINT ["dotnet", "out/Api.dll"]
