import React from 'react';
import { Text, TouchableOpacity } from 'react-native';

class ThrowErrorButton extends React.Component {

    constructor(props) {
        super(props);
        this.updateMe = this.updateMe.bind(this);
    }

    componentWillUpdate() {
        const x = 6;
    }

    componentDidUpdate() {
        // throw new Error('This is an error');
    }

    updateMe() {
        this.forceUpdate();
    }

    render() {
        return (
            <TouchableOpacity style={{ borderWidth: 1, borderColor: 'black' }} onPress={this.updateMe} >
                <Text>Throw Error</Text>
            </TouchableOpacity>
        );
    }
}

export default ThrowErrorButton;
