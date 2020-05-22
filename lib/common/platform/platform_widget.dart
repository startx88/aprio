import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

abstract class PlatformWidget<
    C extends Widget,
    M extends Widget,
    Window extends Widget,
    Mac extends Widget,
    Web extends Widget> extends StatelessWidget {
  PlatformWidget({Key key}) : super(key: key);

  C buildCuperTinoWidget(BuildContext context);
  M buildMaterialWidget(BuildContext context);
  Window buildWindowMaterialWidget(BuildContext context);
  Mac buildMacMaterialWidget(BuildContext context);
  Web buildWebMaterialWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return buildCuperTinoWidget(context);
    }

    if (Platform.isWindows) {
      return buildWindowMaterialWidget(context);
    }

    if (Platform.isMacOS) {
      return buildMacMaterialWidget(context);
    }

    if (kIsWeb) {
      return buildWebMaterialWidget(context);
    }

    return buildMaterialWidget(context);
  }
}
