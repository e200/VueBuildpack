#!/usr/bin/env bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testDetectSrcFolder()
{
  mkdir ${BUILD_DIR}/src
  mkdir ${BUILD_DIR}/build
  mkdir ${BUILD_DIR}/config

  PACKAGE_JSON_CONTENT=`cat <<EOF
  {
    "dependencies": {
      "vue": "^2.5.2"
    }
  }
  EOF`

  echo ${PACKAGE_JSON_CONTENT} > pakage.json
  touch index.html

  detect

  assertAppDetected VueJS
}