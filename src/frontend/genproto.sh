#!/bin/bash -eu

# automatiza la generación de archivos Go desde archivos .proto (Protobuf) para el servicio frontend.

# genera los código fuente cliente/servidor necesarios para que el frontend pueda comunicarse con otros servicios a través de gRPC.
 
# [START gke_frontend_genproto]

PATH=$PATH:$(go env GOPATH)/bin
protodir=../../protos
outdir=./genproto

protoc --proto_path=$protodir --go_out=./$outdir --go_opt=paths=source_relative --go-grpc_out=./$outdir --go-grpc_opt=paths=source_relative $protodir/demo.proto

# [END gke_frontend_genproto]
