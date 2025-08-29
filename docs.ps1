#/usr/bin/pwsh

docker run --rm -v ${pwd}:/protos -v ${pwd}\docs_gen:/gen --workdir /protos bufbuild/buf generate src --template buf.gen.docs.yaml