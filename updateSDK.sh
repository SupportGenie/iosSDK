#!/bin/bash
rm -rf SupportGenieSDK.framework
cp -R ../iosSDKDev/SupportGenieSDK/build/universal/SupportGenieSDK.framework ./
git add SupportGenieSDK.framework
git add SupportGenieSDK.podspec
git add updateSDK.sh
git commit -m "added new code for videoCall using videoSessionId"
git push origin
git tag v0.0.198
git push origin --tags
pod trunk push SupportGenieSDK.podspec --allow-warnings


