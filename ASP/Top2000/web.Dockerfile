FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build-env
WORKDIR /App

# Copy everything
COPY . ./
# Restore as distinct layers
RUN dotnet restore "Top2000.Web/Web.csproj"
# Build and publish a release
# RUN dotnet publish -c Release -o out
RUN dotnet tool install --global dotnet-ef && echo "export PATH=\"$PATH:/root/.dotnet/tools\"" >> /root/.bashrc
# RUN dotnet list package
# Build runtime image

# ENTRYPOINT ["ls"]
ENTRYPOINT ["./web.sh"]
# ENTRYPOINT ["dotnet", "out/Api.dll"]
