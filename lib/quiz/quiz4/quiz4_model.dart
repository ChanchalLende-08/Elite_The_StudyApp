import '/flutter_flow/flutter_flow_util.dart';
import 'quiz4_widget.dart' show Quiz4Widget;
import 'package:flutter/material.dart';

class Quiz4Model extends FlutterFlowModel<Quiz4Widget> {
  ///  Local state fields for this page.

  int? quizescore = 0;

  bool? iscorrect;

  String? selectedoption = '';

  bool? quizover;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
