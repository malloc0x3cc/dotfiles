#!/bin/sh
cd ~/Games/osu
git pull
dotnet run --project osu.Desktop -c Release
