/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 * @lint-ignore-every XPLATJSCOPYRIGHT1
 */

import React, { Component } from 'react';
import { Platform, StyleSheet, Text, View, NativeModules } from 'react-native';
import Video from 'react-native-video';
import { red } from 'ansi-colors';

let React2Native = NativeModules.React2Native;

export default class App extends Component {
  constructor() {
    super();
    this.back = this.back.bind(this);
    console.log(Video)
  }
  back() {
    React2Native.addEvent("test", "test", Date.now(), (...e) => {
      console.log('handleBakc', e)
    });
  }
  render() {
    return (
      <View style={styles.container}>
        <Video source={{ uri: "http://clips.vorwaerts-gmbh.de/VfE_html5.mp4" }}
          style={styles.backgroundVideo}
          controls={true} />
        <Text style={styles.btn} onPress={this.back}>go Back</Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    flexDirection: 'column',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  backgroundVideo: {
    position: 'absolute',
    top: 0,
    left: 0,
    bottom: 0,
    right: 0,
    backgroundColor: 'black',
  },
  btn: {
    color: 'blue'
  }
});
