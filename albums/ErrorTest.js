import React from 'react';
import { View } from 'react-native';
import ThrowErrorButton from './ThrowErrorButton';
import ErrorBoundary from './ErrorBoundary';

const ErrorTest = () => {
    return (
        <View
            style={{
                justifyContent: 'center',
                alignItems: 'center',
                paddingTop: 32
            }}
        >
            <ErrorBoundary>
                <ThrowErrorButton />
            </ ErrorBoundary>
        </View>
    );
};

export default ErrorTest;
