#!/bin/bash

set -x 

echo "---[ test.sh ]------------------------"

rm -rf ~/players-tt-api

export DEBUG_LEVEL="50"
export DEBUG_DEFAULT_PACKAGE_LEVEL="50"
export DEBUG_DEFAULT_FUNCTION_LEVEL="50"
export DEBUG_PACKAGE_LEVEL_httphandler="50"
export DEBUG_FUNCTION_LEVEL_httphandler_HandlerFunc="40"
export AccessTokenExpiry="5h"
export RefreshTokenExpiry="10h"
export ClientRefreshTimer="30s"

players-tt-api --config $1
