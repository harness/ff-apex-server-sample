// Set flagKey to the feature flag key you want to evaluate.
String flag = 'bool-flag';

// set cache Namespace and Partition
FFConfig config = new FFConfig.builder().cacheNamespace('local').cachePartition('basic').build();

// Set up the target properties.
FFTarget target = FFTarget.builder().identifier('Harness').name('Harness').build();

FFClient client = new FFClient('Your SDK Key', target, config);

// Bool evaluation
Boolean value = client.evaluate(flag, false);
System.debug('Feature flag ' + flag + ' is '+ value + ' for this user');
