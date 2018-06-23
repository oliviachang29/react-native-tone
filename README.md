
# react-native-tone
Simple library for playing tones in React Native (iOS only). Bridge of https://github.com/picciano/iOS-Tone-Generator

Disclaimer: I'm totally new to Obj-C and bridging. If anyone would like to help with this module they are welcome.

## Getting started

`$ yarn add react-native-tone` or `$ npm install react-native-tone --save`

`$ react-native link react-native-tone`

## Usage
```
import RNTone from 'react-native-tone';

// In constructor
RNTone.initWithChannels(numChannels, volume) // initalize
// volume ranges from 0.01-0.25

RNTone.play() // start tone, indefinitely
RNTone.playForDuration(seconds) // start then stop tone for specified time interval (in seconds)
RNTone.stop() // stop tone

// Example
RNTone.initWithChannels(2, 0.25) // initalize two channels at full volume
RNTone.setChannelFrequencies([440, 220]) // A4 and A3
RNTone.playForDuration(0.5) // play for half a second
```

## Todo
* Remove clicking sound at beginning and end of tone