import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

Widget createWidget({
  required List<SingleChildWidget> providers,
  required Widget widget
}) {
  return MultiProvider(
    providers: providers,
    child: widget
  );
}

Widget createMaterialWidget({
  required List<SingleChildWidget> providers,
  required Widget widget
}) {
  return createWidget(
      providers: providers,
      widget: MaterialApp(
        title: "Cognito App",
        theme: ThemeData(
            primarySwatch: Colors.brown
        ),
        home: widget,
      )
  );
}