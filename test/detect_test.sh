#!/usr/bin/env bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testDetect()
{
  mkdir ${BUILD_DIR}/src
  mkdir ${BUILD_DIR}/build
  mkdir ${BUILD_DIR}/config

  PACKAGE_JSON_CONTENT=`echo "\"vue\": \"^2.5.2\""`

  echo ${PACKAGE_JSON_CONTENT} > ${BUILD_DIR}/package.json
  touch ${BUILD_DIR}/index.html

  detect

  assertAppDetected "Detected VueJS project"
}