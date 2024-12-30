# Use the official ASP.NET Core runtime as a parent image
FROM mcr.microsoft.com/dotnet/core/sdk:2.2

# Set the working directory in the container
WORKDIR /app

# Copy the published output from the host machine to the container
COPY . .
WORKDIR /app/aspnet-core-dotnet-core

RUN dotnet restore
RUN dotnet build


# Expose the port the application runs on
EXPOSE 80

# Set the entry point to run the application
ENTRYPOINT ["dotnet", "run"]
