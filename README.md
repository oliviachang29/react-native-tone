
# react-native-tone
Simple library for playing tones in iOS. 

Disclaimer: I'm totally new to Obj-C and bridging. If anyone would like to help with this module they are very welcome!

## Getting started

`$ npm install react-native-tone --save`

### Mostly automatic installation

`$ react-native link react-native-tone`

## Usage
```javascript
import RNTone from 'react-native-tone';

// In constructor
RNTone.start() // initalize
RNTone.startTone(frequencyInHz) // start tone
RNTone.stopTone() // stop tone
```