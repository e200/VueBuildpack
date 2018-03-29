#!/usr/bin/env bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testDetectSrcFolder()
{
  mkdir ${BUILD_DIR}/src
  detect
  assertAppDetected VueJS
}