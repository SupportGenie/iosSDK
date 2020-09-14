#!/bin/bash
rm -rf SupportGenieSDK.framework
cp -R ../iosSDKDev/SupportGenieSDK/build/universal/SupportGenieSDK.framework ./
git add SupportGenieSDK.framework
git add SupportGenieSDK.podspec
git commit -m "added JWT auth"
git push origin
git tag v0.0.186
git push origin --tags
pod trunk push SupportGenieSDK.podspec --allow-warnings


