import '/flutter_flow/flutter_flow_util.dart';
import 'quiz3_widget.dart' show Quiz3Widget;
import 'package:flutter/material.dart';

class Quiz3Model extends FlutterFlowModel<Quiz3Widget> {
  ///  Local state fields for this page.

  int? quizescore = 0;

  bool? iscorrect;

  String? selectedoption = '';

  bool? quizover;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
