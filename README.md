# my_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Local development
- To start iOS Simulator referencences [MacOS Install](https://docs.flutter.dev/get-started/install/macos)
  ```shell
  $ open -a Simulator
  ```

## Run unit tests
```shell
# Generate mock code
$ flutter pub run build_runner build

# Running unit testing
$ flutter test
```

## Analytics (AWS Pinpoint)
* Useful links
  ```text
  Pinpoint URL to track events https://ap-southeast-1.console.aws.amazon.com/pinpoint/home/?region=ap-southeast-1#/apps/ecebc0bc54324093b689b67f83eb1b55/analytics/overview
  Hosted UI Endpoint: https://rlc6kgu2jfaa-dev.auth.ap-southeast-1.amazoncognito.com/
  Test Your Hosted UI Endpoint: https://rlc6kgu2jfaa-dev.auth.ap-southeast-1.amazoncognito.com/login?response_type=code&client_id=73v07s38sk2be1eeegc10eivs&redirect_uri=dealgether://
  ```
* To access to analytics console
  ```shell
  $ amplify console analytics
  ```
