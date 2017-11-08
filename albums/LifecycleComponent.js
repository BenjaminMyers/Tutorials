import React from 'react';
import { View } from 'react-native';

class LifecycleComponent extends React.Component {

    // static propTypes = {};

    static defaultProps = {
        name: 'Parent',
        isOn: true
      };

    constructor(props) {
        super(props);
        this.state = { test: true };
        console.log(`${this.props.name}: constructor`);
    }

    componentWillMount() {
       console.log(`${this.props.name}: componentWillMount`);
    }

    componentDidMount() {
        console.log(`${this.props.name}: componentDidMount`);
    }

    componentWillReceiveProps(nextProps) {
        console.log(`${this.props.name}: componentWillReceiveProps`);
    }

    shouldComponentUpdate(nextProps, nextState) {
        console.log(`${this.props.name}: shouldComponentUpdate`);
        return true;
    }

    componentWillUpdate(nextProps, nextState) {
        console.log(`${this.props.name}: componentWillUpdate`);
    }

    componentDidUpdate(prevProps, prevState) {
        console.log(`${this.props.name}: componentDidUpdate`);
    }

    componentWillUnmount() {
        console.log(`${this.props.name}: componentWillUnmount`);
    }

    componentDidCatch(error, info) {
        console.log(`${this.props.name}: componentDidCatch`);
    }

    // 4
    render() {
        console.log(`${this.props.name}: render`);
        return (
            <View>
                {this.props.children}
            </View>
        );
    }
}

export default LifecycleComponent;
