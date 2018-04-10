#!/usr/bin/env bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testCompile()
{
  compile
  assertCaptured "Installing node"
  assertCaptured "v8.9.4"
  assertCapturedSuccess
}