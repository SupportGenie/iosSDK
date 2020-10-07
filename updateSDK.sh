#!/bin/bash
rm -rf SupportGenieSDK.framework
cp -R ../iosSDKDev/SupportGenieSDK/build/universal/SupportGenieSDK.framework ./
git add SupportGenieSDK.framework
git add SupportGenieSDK.podspec
git add updateSDK.sh
git commit -m "added new code for turn/sturn server url and improve video call"
git push origin
git tag v0.0.235
git push origin --tags
pod trunk push SupportGenieSDK.podspec --allow-warnings


