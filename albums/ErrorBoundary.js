import React from 'react';
import { Text } from 'react-native';

class ErrorBoundary extends React.Component {

    constructor(props) {
        super(props);
        this.state = { hasError: false };
    }

    componentDidCatch() {
        this.setState({ hasError: true });
    }

    // 4
    render() {
        if (this.state.hasError) {
            return <Text>An Error has Occured</Text>;
        }
        return this.props.children;
    }
}

export default ErrorBoundary;
