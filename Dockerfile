FROM mcr.microsoft.com/dotnet/aspnet:9.0

WORKDIR /app

COPY LinnerPublish/ .

ENV ASPNETCORE_URLS=http://0.0.0.0:${PORT:-8080}

ENTRYPOINT ["dotnet", "Linner.Api.dll"]
