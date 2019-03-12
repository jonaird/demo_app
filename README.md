# demo_app

A demo app for testing out native Java and Swift code in Flutter. Hi Alex :)

The simplest way to do this is to create a Flutter plugin by running 

`flutter create --template=plugin -i swift plugin_name`

which enables Swift.

This creates a Flutter project (with a demo flutter app inside it that you don't need). The main Dart file defines asynchronous methods that you can call in your Flutter app. These methods are linked to Java and Swift code depending on the platform which is found in the ios and android folders.

You can check all that including the Java/Swift code in `plugins/demo_plugin`

Then add your plugin to your Flutter app project folder and import it by adding
```plugin_name:
  path:./plugins/plugin_name```
  
 to your `pubspec.yaml` file in your main project folder and boom! You're done.
 
 Make sure that you create your main Flutter app project with Swift enabled.
