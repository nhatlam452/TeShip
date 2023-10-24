import 'package:flutter/material.dart';
import 'package:teship/i18n/strings.g.dart';

import '../../../utils/methods/shortcuts.dart';

class NoFeatureScreen extends StatelessWidget {
  const NoFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: getSize(context).width,
        height: getSize(context).height,
        child: Center(
          child: Text(context.t.strings.no_feature.in_progress),
        ),
      ),
    );
  }
}