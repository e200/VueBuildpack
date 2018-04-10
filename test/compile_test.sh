#!/usr/bin/env bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testCompile()
{
  compile
  #assertCapturedSuccess
  assertCaptured "Downloading node"
  assertCaptured "Download complete, extracting downloaded content..."
  assertCaptured "Installing node"
}