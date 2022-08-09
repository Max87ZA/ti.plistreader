# ti.plistreader

Simple titanium module to read Info.plist file, mainly for CFBundleVersion

Usage:
var plistmodule = require('sk.maxapp.plistreader'),
appVersion = plistmodule.getValue({"key":"CFBundleVersion"});
$.versionLabel.text = "Version: "+appVersion;

Tested on iOS 15.4 with 10.1.1.GA

Thanks to https://github.com/meeech/Titanium-info.plist-module for inspiration and Miso for Git help :) 
Free to use, no guaranties.