#/usr/bin/pwsh

docker run --rm -v ${pwd}:/protos -v ${pwd}\ts_gen:/gen --workdir /protos bufbuild/buf generate --template buf.gen.ts.yaml ./src