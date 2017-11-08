// Place Code here

// Import a library to help create a component
import React from 'react';
import { AppRegistry, View, TouchableOpacity, Text } from 'react-native';
import LifecycleComponent from './LifecycleComponent';
import ErrorTest from './ErrorTest';

class App extends React.Component {
    constructor(props) {
        super(props);
        this.state = { test: true, here: true };
        this.updateMe = this.updateMe.bind(this);
        this.closeeMe = this.closeeMe.bind(this);
    }

    updateMe() {
        const testMe = !this.state.test;
        this.setState({ test: testMe, here: true });
    }

    closeeMe() {
        const testMe = this.state.test;
        this.setState({ test: testMe, here: false });
    }


    render() {
        if (this.state.here) {
            return (
                <View
                style={{
                    justifyContent: 'center',
                    alignItems: 'center',
                    paddingTop: 32
                }}
                >
                    <LifecycleComponent>
                        <TouchableOpacity style={{ borderWidth: 1, borderColor: 'black' }} onPress={this.updateMe} >
                            <Text>Update</Text>
                        </TouchableOpacity>
                        <TouchableOpacity style={{ borderWidth: 1, borderColor: 'black' }} onPress={this.closeeMe} >
                            <Text>Unmount</Text>
                        </TouchableOpacity>
                    </ LifecycleComponent>
                </View>
            );
        }
        return null;
    }
}

// Render it to the device
AppRegistry.registerComponent('albums', () => App);
