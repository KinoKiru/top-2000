#!/bin/bash
cd Top2000.Web
export PATH="$PATH:/root/.dotnet/tools"
dotnet user-secrets set "Authentication:Google:ClientId" "164066526332-plucippcugjl6fdq9c4r2oad1ns68jiv.apps.googleusercontent.com"
dotnet user-secrets set "Authentication:Google:ClientSecret" "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"
pwd
dotnet run 
