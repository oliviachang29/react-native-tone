
# react-native-tone 🎶
Simple library for playing tones in React Native (iOS only). Bridge of https://github.com/picciano/iOS-Tone-Generator

## Getting started

```
yarn add react-native-tone

or

npm install react-native-tone --save
```

```
react-native link react-native-tone
```

## Usage

Generates simple sine wave, specify a frequency and amplitude. Play sound indefinitely or for a specified time interval.

```
import RNTone from 'react-native-tone';

// In constructor
RNTone.initWithChannels(numChannels, volume) // initalize
// volume ranges from 0.01-0.25

RNTone.play() // play tone, indefinitely
RNTone.playForDuration(seconds) // play specified time interval (in seconds)
RNTone.stop() // stop tone

// Example
RNTone.initWithChannels(2, 0.25) // initalize two channels at full volume
RNTone.setChannelFrequencies([440, 220]) // A4 and A3
RNTone.playForDuration(0.5) // play for half a second
```

## Todo
* Remove clicking sound at beginning and end of tone

P.S. I'm still still learning Obj-C and bridging, so if anyone would like to help with this module they are very welcome!
