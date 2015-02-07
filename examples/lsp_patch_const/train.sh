#!/usr/bin/env sh

prefix=train-29-Jan-2015
postfix=train

mkdir cache
mkdir cache/$prefix
mkdir /home/wyang/Data/cache/caffe/LSP_P26_K17_patch/models/model-01-29/

TOOLS=../../build/tools

$TOOLS/caffe train -solver lsp-xianjie-solver.prototxt -gpu 1 2>&1 | tee cache/$prefix/$prefix-$postfix.log
