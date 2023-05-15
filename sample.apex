// Set flagKey to the feature flag key you want to evaluate.
String flag = 'bool-flag';

// set cache Namespace and Partition
FFOrgCache cache = new FFOrgCache('local', 'basic');
System.debug('Cache Created');
FFConfig config = new FFConfig.builder()
    .cache(cache)
    .metricsEnabled() //Enable Metrics publishing
    .build();

// Create Client
FFClient client = FFClient.builder('YOUR SDK KEY', config).build();
System.debug('Client created');

// Set up the target properties.
FFTarget target = FFTarget.builder().identifier('Harness').name('Harness').build();
System.debug('Target created');

// Bool evaluation
Boolean value = client.boolVariation(flag, target, false);
System.debug('Feature flag ' + flag + ' is '+ value + ' for this user');
