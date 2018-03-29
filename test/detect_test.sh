#!/usr/bin/env bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testDetect()
{
  mkdir -p ${BUILD_DIR}/src
  mkdir -p ${BUILD_DIR}/build
  mkdir -p ${BUILD_DIR}/config

  PACKAGE_JSON_CONTENT=`echo "\"vue\": \"0.0.0\""

  echo ${PACKAGE_JSON_CONTENT} > ${BUILD_DIR}/package.json
  touch ${BUILD_DIR}/index.html

  detect

  assertAppDetected "Detected VueJS project"
}