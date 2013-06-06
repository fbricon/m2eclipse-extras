#!/bin/sh

NOW=$(date +"%Y%m%d%H%m%S")

NEW_VERSION="0.15.0.201207090125-signed-"$NOW

mvn org.eclipse.tycho:tycho-versions-plugin:set-version -DnewVersion=$NEW_VERSION -Dtycho.mode=maven

mvn clean verify -DskipTests -Peclipse-sign
