import firebase from 'firebase';
import React, { Component } from 'react';
import { View } from 'react-native';
import { Header } from './components/common';
import LoginForm from './components/LoginForm';

class App extends Component {

  componentWillMount() {
    firebase.initializeApp({
      apiKey: 'AIzaSyBJbwpwBSlPl9l345FxB6KycV3ltNUvOpw',
      authDomain: 'authentication-c5bca.firebaseapp.com',
      databaseURL: 'https://authentication-c5bca.firebaseio.com',
      projectId: 'authentication-c5bca',
      storageBucket: 'authentication-c5bca.appspot.com',
      messagingSenderId: '1026432059439'
    });
  }

  render() {
    return (
      <View>
          <Header headerText="Authentication" />
          <LoginForm />
      </View>
    );
  }
}

export default App;
