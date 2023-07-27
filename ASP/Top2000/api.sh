#!/bin/bash
cd Api
export PATH="$PATH:/root/.dotnet/tools"
dotnet ef database update
pwd
dotnet run 
