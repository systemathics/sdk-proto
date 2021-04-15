#/usr/bin/pwsh

$path = Join-Path -Path $pwd -ChildPath "src"
$items = Get-ChildItem -Recurse -Include *.proto | % { $_.FullName.Replace($path,"protos").Replace('\','/') }

docker run --rm -v ${pwd}\doc:/out -v ${pwd}\src:/protos  pseudomuto/protoc-gen-doc --doc_opt=json,docs.json --proto_path=/protos $items