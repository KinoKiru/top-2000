import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

/// TranslationWrapper
/// Shorthand code for StreamBuilder widget
class TranslationWrapper extends StatefulWidget {
  const TranslationWrapper({super.key, required this.onLoad});
  final Function(BuildContext context) onLoad;

  @override
  State<TranslationWrapper> createState() => _TranslationWrapperState();
}

class _TranslationWrapperState extends State<TranslationWrapper> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      builder: (BuildContext context, _) => widget.onLoad(context),
      initialData: true,
      stream: FlutterI18n.retrieveLoadedStream(context),
    );
  }
}
