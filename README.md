# Before you Begin

Harness Feature Flags (FF) is a feature management solution that enables users to change the software’s functionality, without deploying new code. FF uses feature flags to hide code or behaviours without having to ship new versions of the software. A feature flag is like a powerful if statement.

For more information, see https://harness.io/products/feature-flags/

To read more, see https://ngdocs.harness.io/category/vjolt35atg-feature-flags

To sign up, https://app.harness.io/auth/#/signup/

This is a sample app demonstrating APEX Server SDK integration with Feature Flags.

## Requirements
[SalesForce SFDX cli](https://developer.salesforce.com/tools/sfdxcli)

## To use this application, follow the steps as below ##

1) Create a project in Harness with Feature-flags module enabled
2) Create an environment within your project
3) Create a client-side sdk key in your environment **COPY the value from the Admin Console to your clipboard since this value will only be displayed once**
4) Create a boolean feature-flag in the admin console
5) Replace the values for SDK Key and feature-flag identifier in the example program from step 3 and 4
6) SalesForce Cache setup
    * In Setup, enter Platform Cache in the Quick Find box, then select Platform Cache.
    * Click New Platform Cache Partition.
    * Give the partition a name (such as the name of your application).
    * Check Default Partition
    * Enter 0 for session cache and VALUE for org cache, and then click Save
    ![Image](https://res.cloudinary.com/hy4kyit2a/f_auto,fl_lossy,q_70/learn/modules/platform_cache/platform_cache_use/images/f46f9dc151432ceb07386f3a27a67ceb_new_partition.png)
7) Build and Run the program from SalesForce DEV console

## Build instructions

1. Clone the Apex SDK.

```bash
git clone https://github.com/harness/ff-apex-server-sdk
```

2. Deploy the SDK to Salesforce.

```bash
cd ff-apex-server-sdk
sfdx force:source:deploy --targetusername='YOUR TARGET ORG' --sourcepath='force-app'
```

3. If there is an existing boolean feature flag in your project that you want to evaluate, edit `sample.apex` and set the value of `flag` to the flag key.

```java
String flag = 'bool-flag';
```

4. Use the SDK with `sample.apex`

```bash
sfdx force:apex:execute --targetusername='YOUR TARGET ORG' --apexcodefile='sample.apex'
```