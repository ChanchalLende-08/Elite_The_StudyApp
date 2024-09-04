import '/flutter_flow/flutter_flow_util.dart';
import 'recovery_password_widget.dart' show RecoveryPasswordWidget;
import 'package:flutter/material.dart';

class RecoveryPasswordModel extends FlutterFlowModel<RecoveryPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
