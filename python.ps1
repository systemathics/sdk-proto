#/usr/bin/pwsh

docker run --rm -v ${pwd}:/protos -v ${pwd}\python_gen:/gen --workdir /protos bufbuild/buf generate src --template buf.gen.python.yaml