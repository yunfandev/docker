#!/bin/sh

work_dir=$(realpath -s $(dirname "$0"))

docker build -t yunfandev/nginx:stable ${work_dir}
