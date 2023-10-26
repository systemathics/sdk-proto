#/usr/bin/pwsh

docker run --rm -v ${pwd}:/protos -v ${pwd}\gen:/gen --workdir /protos bufbuild/buf generate src