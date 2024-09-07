import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'uploadfilr_model.dart';
export 'uploadfilr_model.dart';

class UploadfilrWidget extends StatefulWidget {
  const UploadfilrWidget({super.key});

  @override
  State<UploadfilrWidget> createState() => _UploadfilrWidgetState();
}

class _UploadfilrWidgetState extends State<UploadfilrWidget> {
  late UploadfilrModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UploadfilrModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowIconButton(
      borderColor: const Color(0xFF1F08F5),
      borderRadius: 20.0,
      borderWidth: 1.0,
      buttonSize: 60.0,
      fillColor: FlutterFlowTheme.of(context).info,
      icon: Icon(
        Icons.upload_file,
        color: FlutterFlowTheme.of(context).primaryText,
        size: 40.0,
      ),
      onPressed: () async {
        context.pushNamed('StdUploadedData');
      },
    );
  }
}
