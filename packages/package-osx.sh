dotnet publish -c Release -f netcoreapp2.1 -r osx-x64 ../AvalonStudio/AvalonStudio
rm -rf ./osx/AvalonStudio.app/Contents/MacOS
mkdir ./osx/AvalonStudio.app/Contents/MacOS
cp -R ../AvalonStudio/AvalonStudio/bin/Release/netcoreapp2.1/osx-x64/publish/ ./osx/AvalonStudio.app/Contents/MacOS/
mkdir artifacts
cd osx
zip -r -X ../artifacts/AvalonStudio.osx-x64-$BUILD_SOURCEBRANCHNAME-$BUILD_SOURCEVERSION.zip *
cd ..
