if [ ! -n "$WERCKER_JSHINT_VERSION" ]; then
    fail 'Please specify JSHint version'
fi

sudo npm install jshint@$WERCKER_JSHINT_VERSION -g
jshint . --reporter=jslint > $WERCKER_REPORT_ARTIFACTS_DIR/jshint.xml || true
