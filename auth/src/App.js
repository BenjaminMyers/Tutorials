import firebase from 'firebase';
import React, { Component } from 'react';
import { View } from 'react-native';
import { Header, Button } from './components/common';
import LoginForm from './components/LoginForm';

class App extends Component {
  state = { loggedIn: false };

  componentWillMount() {
    firebase.initializeApp({
      apiKey: 'AIzaSyBJbwpwBSlPl9l345FxB6KycV3ltNUvOpw',
      authDomain: 'authentication-c5bca.firebaseapp.com',
      databaseURL: 'https://authentication-c5bca.firebaseio.com',
      projectId: 'authentication-c5bca',
      storageBucket: 'authentication-c5bca.appspot.com',
      messagingSenderId: '1026432059439'
    });

    firebase.auth().onAuthStateChanged((user) => {
      if (user) {
        this.setState({ loggedIn: true });
      } else {
        this.setState({ loggedIn: false });
      }
    });
  }

  renderContent() {
    if (this.state.loggedIn) {
      return (
        <Button>
          Log onAuthStateChanged
        </Button>
      );
    }
    return <LoginForm />;
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
